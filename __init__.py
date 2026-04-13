from flask import Flask
from flask_talisman import Talisman

app = Flask(__name__)

# Konfigurasi Talisman untuk Security Headers
talisman = Talisman(app)

# Tambahan route atau konfigurasi lainnya...
@app.route("/")
def index():
    return "Hello, Security!"
