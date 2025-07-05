from flask import Flask, render_template, request
import pyodbc

app = Flask(__name__)

# SQL Server connection settings
server = 'LT-AKSHAY-PRECA\MSSQLSERVER01'  # or your server name
database = 'Web_app_table'
username = 'your_username'        # use 'sa' or your SQL user
password = 'your_password'
driver = '{ODBC Driver 17 for SQL Server}'  # or check installed drivers

# Function to insert data
def insert_data(tab, element, element_type, qty):
    conn = pyodbc.connect(
        f'DRIVER={driver};SERVER={server};DATABASE={database};UID={username};PWD={password}'
    )
    cursor = conn.cursor()
    cursor.execute('''
        INSERT INTO Entries (tab, element, element_type, qty)
        VALUES (?, ?, ?, ?)
    ''', (tab, element, element_type, qty))
    conn.commit()
    conn.close()

@app.route('/')
def index():
    return render_template('form.html')

@app.route('/submit', methods=['POST'])
def submit():
    if request.form.get("confirm") == "yes":
        tab = request.form['tab']
        element = request.form['element']
        element_type = request.form['element_type']
        qty = request.form['qty']
        insert_data(tab, element, element_type, qty)
        return f"<h3>Data saved to SQL Server for {tab}.</h3><a href='/'>Back</a>"
    else:
        return "<h3>Submission cancelled.</h3><a href='/'>Back</a>"

if __name__ == '__main__':
    app.run(debug=True)

