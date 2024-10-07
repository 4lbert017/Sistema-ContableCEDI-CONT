from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL
from flask_sqlalchemy import SQLAlchemy  # Importa SQLAlchemy

app = Flask(__name__)

# Configuración de MySQL para flask_mysqldb
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'sistemacontable'
app.config['MYSQL_PORT'] = 3306

mysql = MySQL(app)

# Configuración de SQLAlchemy
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/sistemacontable'  # Cambia la URI según tu configuración
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)  # Inicia la instancia de SQLAlchemy

# Ejemplo de un modelo usando SQLAlchemy
class Usuario(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(100), nullable=False)
    password = db.Column(db.String(255), nullable=False)
    rol = db.Column(db.String(50), nullable=False)

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
        return redirect(url_for('menu'))  # Redirige al menú
    else:
        flash('Usuario o contraseña incorrectos')
        return redirect(url_for('login'))

@app.route('/menu')
def menu():
    return render_template('menu.html')  # Renderiza la plantilla del menú

# Ruta para Imprimir Presupuesto
@app.route('/imprimir-presupuesto')
def imprimir_presupuesto():
    return render_template('imprimir_presupuesto.html')

@app.route('/saldos_generales', methods=['GET', 'POST'])
def saldos_generales():
    if request.method == 'POST':
        year = request.form['year']
        saldo_tipo = request.form['saldo_tipo']
        # Procesar los datos seleccionados
        return f"Procesando saldos del {year}, tipo {saldo_tipo}"
    return render_template('saldos_generales.html')

@app.route('/balance_general', methods=['GET', 'POST'])
def balance_general():
    if request.method == 'POST':
        # Procesar los datos enviados desde el formulario
        pass

    # Renderizar la página de Balance General en caso de GET o después de procesar el POST
    return render_template('Balance_General.html')

# Ruta para probar la conexión a la base de datos
@app.route('/test-db-connection')
def test_db_connection():
    try:
        cur = mysql.connection.cursor()
        cur.execute("SELECT 1")  # Consulta simple para probar la conexión
        cur.close()
        return "Conexión exitosa a la base de datos."
    except Exception as e:
        return f"Error al conectar a la base de datos: {str(e)}"

if __name__ == '__main__':
    app.run(debug=True)
