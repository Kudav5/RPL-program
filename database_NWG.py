import mysql.connector

db = mysql.connector.connect(
    host = 'localhost',
    user = 'root',
    password = '',
    database = 'nowordsgame'
)

# menguji server 
'''
if db.is_connected:
    print('berhasil') 
'''

cursor = db.cursor()

# == Tampil
def buatDatabase():
    nama = input('namaTabel: ')
    cursor.execute(f'create database {nama}')
    print('database dibuat')

def tampilDatabase():
    cursor.execute('show databases')
    databases = cursor.fetchall()
    for data in databases:
        print(data[0])

def tampilIsiTabel():
    cursor.execute('show tables')
    showTable = cursor.fetchall()
    for i in showTable:
        print(i[0])

    Ntab = input('nama tabel: ')
    cursor.execute(f'desc {Ntab}')
    tabDesc = cursor.fetchall()
    for j in tabDesc:
        print(f'Field {j[0]}', f'Type {j[1]}', f'NULL {j[2]}', f'Key {j[3]}', f'DEFAULT {j[4]}', 'Extra')
        print(j)

    a = input('tampil kolom(y/n): ')
    if a =='y':
        table = input('nama kolom: ')
        cursor.execute(f"SELECT * FROM {table}")
        tables = cursor.fetchall()
        for data in tables:
            print(data[0])
    
