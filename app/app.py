from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL
from flask import jsonify
from flask import  make_response
from xhtml2pdf import pisa
from io import BytesIO
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

@app.route('/presupuesto')
def presupuesto():
    return render_template('presupuesto.html')

@app.route('/imprimir_presupuesto')
def imprimir_presupuesto():
    return render_template('imprimir_presupuesto.html')

@app.route('/crear_presupuesto', methods=['POST'])
def crear_presupuesto():
    # Lógica para manejar la creación del presupuesto
    return redirect(url_for('presupuesto'))

@app.route('/procesar_presupuesto', methods=['POST'])
def procesar_presupuesto():
    # Aquí puedes agregar la lógica para procesar el presupuesto
    # Por ejemplo, podrías recibir el año y tipo de presupuesto y hacer una consulta a la base de datos.
    return redirect(url_for('presupuesto'))  # Redirige a otra página después de procesar (aqui debe imprimir)

@app.route('/guardar_ingresos_egresos', methods=['GET','POST'])
def guardar_ingresos_egresos():
    #AQUI VA LA LOGICA
    flash('Datos guardados exitosamente')
    return render_template('guardar_ingresos_egresos.html')

@app.route('/estado_de_resultados')
def estado_de_resultados():
    return render_template('estado_de_resultados.html')

@app.route('/imprimir_estado_resultados')
def imprimir_estado_resultados():
    return render_template('')

@app.route('/polizas')
def polizas():
    return render_template('polizas.html')

@app.route('/poliza_cheques')
def poliza_cheques():
    return render_template('poliza_cheques.html')

@app.route('/poliza_diario')
def poliza_diario():
    return render_template('poliza_diario.html')


@app.route('/consultar_poliza')
def consultar_poliza():
    return render_template('consultar_poliza.html')

@app.route('/editarPoliza')
def editar_poliza():
    return render_template('editarPoliza.html')



@app.route('/saldos_iniciales')
def saldos_iniciales():
    return render_template('saldos_iniciales.html')

@app.route('/Mayor')
def Mayor():
    return render_template('Mayor.html')

@app.route('/mayor_res')
def mayor_res():
    return render_template('mayor_res.html')

@app.route('/Visualizar_IngresoDiario')
def Visualizar_IngresoDiario():
    return render_template('Visualizar_IngresoDiario.html')


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
        cur.execute("SELECT 1")
        cur.close()
        return "Conexión exitosa a la base de datos."
    except Exception as e:
        return f"Error al conectar a la base de datos: {e}"

    
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

@app.route('/generar_pdf')
def generar_pdf():
    # Obtener parámetros de la solicitud
    sucursal = request.args.get('sucursal', 'Todas las Sucursales')
    mes = request.args.get('mes', 'N/A')
    anio = request.args.get('anio', 'N/A')

    # Datos simulados (reemplaza con datos de tu base de datos)
    datos = [
        {'fecha': '2024-11-05', 'ultrasonido': "$100", 'rayos_x': "$200", 'mastografia': "$150",
        'electro': "$80", 'totalImagen': "$530", 'totalLaboratorio': "$300", 'terminal': "$50",
        'deposito': "$100", 'gastosAdicionales': "$30", 'totalGeneral': "$650"},
    ]

    # Renderizar la plantilla HTML para el PDF
    rendered_html = render_template(
        'reporte_pdf.html', sucursal=sucursal, mes=mes, anio=anio, datos=datos
    )

    # Convertir HTML a PDF usando xhtml2pdf
    pdf_buffer = BytesIO()
    pdf = pisa.CreatePDF(BytesIO(rendered_html.encode('utf-8')), pdf_buffer)

    if pdf.err:
        return "Error al generar el PDF", 500

    # Devolver el PDF como respuesta
    response = make_response(pdf_buffer.getvalue())
    response.headers['Content-Type'] = 'application/pdf'
    response.headers['Content-Disposition'] = f'inline; filename=Reporte_{sucursal}_{mes}_{anio}.pdf'
    return response


if __name__ == '__main__':
    app.run(debug=True)
