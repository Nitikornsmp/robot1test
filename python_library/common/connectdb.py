import pyodbc

conn = pyodbc.connect('Driver={SQL Server};'
                      'Server=localhost\SQLEXPRESS;'
                      'Database=NopTest;'
                      'Trusted_Connection=yes;')

cursor = conn.cursor()

cursor.execute('select*from dbo.customer where ')

for row in cursor:
    print (row)