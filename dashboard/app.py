from flask import Flask, send_from_directory
import os

app = Flask(__name__)

# Esta ruta sirve la página principal (index.html)
@app.route('/')
def index():
    return send_from_directory('.', 'index.html')

# Esta ruta sirve los archivos estáticos (los CSVs)
@app.route('/<path:filename>')
def serve_static_files(filename):
    return send_from_directory('.', filename)

if __name__ == '__main__':
    # El puerto es manejado por Heroku, esto es solo para pruebas locales
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port)