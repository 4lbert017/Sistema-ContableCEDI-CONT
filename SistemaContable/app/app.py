from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL
from flask import jsonify

app = Flask(__name__)

# Configuración de MySQL para flask_mysqldb
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'sistemacontable'
app.config['MYSQL_PORT'] = 3306

mysql = MySQL(app)

# Configuración de la aplicación
app.secret_key = 'mysecretkey'

@app.route('/')
def login():
    return render_template('login.html')

@app.route('/auth', methods=['POST'])
def auth():
    username = request.form['username']
    password = request.form['password']
    
    # Consultar la base de datos para verificar las credenciales
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM usuarios WHERE nombre_usuario = %s AND contraseña = %s", (username, password))
    user = cur.fetchone()
    cur.close()

    if user:
        return redirect(url_for('menu'))  
    else:
        flash('Usuario o contraseña incorrectos')
        return redirect(url_for('login'))

@app.route('/menu')
def menu():
    return render_template('menu.html') 

# Ruta para Imprimir Presupuesto
@app.route('/imprimir-presupuesto')
def imprimir_presupuesto():
    return render_template('imprimir_presupuesto.html')

@app.route('/guardar_ingresos_egresos', methods=['GET','POST'])
def guardar_ingresos_egresos():
    #AQUI VA LA LOGICA
    flash('Datos guardados exitosamente')
    return render_template('guardar_ingresos_egresos.html')



@app.route('/saldos_generales', methods=['GET', 'POST'])
def saldos_generales():
    if request.method == 'POST':
        year = request.form['year']
        saldo_tipo = request.form['saldo_tipo']
        return f"Procesando saldos del {year}, tipo {saldo_tipo}"
    return render_template('saldos_generales.html')

@app.route('/balance_general', methods=['GET', 'POST'])
def balance_general():
    if request.method == 'POST':
        # Procesar los datos enviados desde el formulario
        pass
    return render_template('Balance_General.html')

@app.route('/test-db-connection')
def test_db_connection():
    try:
        cur = mysql.connection.cursor()
        cur.execute("SELECT 1")  # Consulta simple para probar la conexión
        cur.close()
        return "Conexión exitosa a la base de datos."
    except Exception as e:
        return f"Error al conectar a la base de datos: {str(e)}"
    
@app.route('/admin-usuarios')
def admin_usuarios():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM usuarios")
    users = cur.fetchall()
    cur.close()

    return render_template('admin_usuarios.html', users=users)

@app.route('/add_user', methods=['POST'])
def add_user():
    data = request.get_json()
    username = data['username']
    password = data['password']
    role = data['role']

    cur = mysql.connection.cursor()
    cur.execute("INSERT INTO usuarios (nombre_usuario, contraseña, rol) VALUES (%s, %s, %s)", (username, password, role))
    mysql.connection.commit()
    cur.close()

    return {'success': True}

@app.route('/update_user/<int:id>', methods=['POST'])
def update_user(id):
    data = request.json
    cur = mysql.connection.cursor()
    cur.execute("UPDATE usuarios SET nombre_usuario = %s, contraseña = %s, rol = %s WHERE id = %s",
                (data['username'], data['password'], data['role'], id))
    mysql.connection.commit()
    cur.close()
    return jsonify({'success': True})

@app.route('/delete_user/<int:id>', methods=['POST'])
def delete_user(id):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM usuarios WHERE id = %s", (id,))
    mysql.connection.commit()
    cur.close()
    return jsonify({'success': True})

# Ruta para ver las cuentas
@app.route('/cuentas')
def cuentas():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM cuentas")  # Consulta todas las cuentas
    cuentas = cur.fetchall()
    cur.close()
    return render_template('cuentas.html', cuentas=cuentas)

# Ruta para crear una nueva cuenta
@app.route('/crear_cuenta', methods=['POST'])
def crear_cuenta():
    if request.method == 'POST':
        nombre = request.form['nombre']
        tipo = request.form['tipo']
        descripcion = request.form['descripcion']
        
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO cuentas (nombre, tipo, descripcion) VALUES (%s, %s, %s)", (nombre, tipo, descripcion))
        mysql.connection.commit()
        cur.close()
        flash('Cuenta creada exitosamente')
        return redirect(url_for('cuentas'))

# Ruta para editar una cuenta existente
@app.route('/editar_cuenta/<int:id>', methods=['POST'])
def editar_cuenta(id):
    if request.method == 'POST':
        nombre = request.form['nombre']
        tipo = request.form['tipo']
        descripcion = request.form['descripcion']
        
        cur = mysql.connection.cursor()
        cur.execute("""
            UPDATE cuentas 
            SET nombre = %s, tipo = %s, descripcion = %s 
            WHERE id = %s
        """, (nombre, tipo, descripcion, id))
        mysql.connection.commit()
        cur.close()
        flash('Cuenta actualizada exitosamente')
        return redirect(url_for('cuentas'))

# Ruta para eliminar una cuenta
@app.route('/eliminar_cuenta/<int:id>', methods=['POST'])
def eliminar_cuenta(id):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM cuentas WHERE id = %s", (id,))
    mysql.connection.commit()
    cur.close()
    flash('Cuenta eliminada exitosamente')
    return redirect(url_for('cuentas'))

# Ruta para crear un nuevo presupuesto
@app.route('/crear_presupuesto', methods=['GET', 'POST'])
def crear_presupuesto():
    if request.method == 'POST':
        # Código para manejar el formulario cuando se envía (método POST)
        id_cuenta = request.form['id_cuenta']
        categoria = request.form['categoria']
        anio = request.form['anio']
        monto = request.form['monto']
        
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO presupuesto (id_cuenta, categoria, año, monto) VALUES (%s, %s, %s, %s)", 
                    (id_cuenta, categoria, anio, monto))
        mysql.connection.commit()
        cur.close()
        flash('Presupuesto creado exitosamente')
        return redirect(url_for('presupuestos'))  # Redirige a una página para ver los presupuestos
    else:
        # Aquí se maneja el método GET, cuando quieres mostrar la página
        cur = mysql.connection.cursor()
        cur.execute("SELECT id, nombre FROM cuentas")  # Consulta para obtener las cuentas
        cuentas = cur.fetchall()  # Obtenemos las cuentas de la base de datos
        cur.close()

        print(cuentas)  # Esto imprimirá las cuentas en la consola para verificar
        return render_template('crear_presupuesto.html', cuentas=cuentas)  # Pasamos las cuentas al template


# Ruta para mostrar los presupuestos
@app.route('/presupuestos')
def presupuestos():
    cur = mysql.connection.cursor()
    cur.execute("""
        SELECT presupuesto.id, cuentas.nombre, presupuesto.categoria, presupuesto.anio, presupuesto.monto 
        FROM presupuesto 
        JOIN cuentas ON presupuesto.id_cuenta = cuentas.id
    """)
    presupuestos = cur.fetchall()
    cur.close()
    return render_template('presupuesto.html', presupuestos=presupuestos)

if __name__ == '__main__':
    app.run(debug=True)
