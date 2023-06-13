import mysql.connector

password=""
database="foodie"
def select(qry):
	con=mysql.connector.connect(user="root",password=password,host="localhost",database=database)
	cur=con.cursor(dictionary=True)
	cur.execute(qry)
	result=cur.fetchall()
	cur.close()
	con.close()
	return result
def insert(qry):
	con=mysql.connector.connect(user="root",password=password,host="localhost",database=database )
	cur=con.cursor(dictionary=True)
	cur.execute(qry)
	con.commit()
	result=cur.lastrowid   
	cur.close()
	con.close()
	return result
def update(qry):
	con=mysql.connector.connect(user="root",password=password,host="localhost",database=database)
	cur=con.cursor(dictionary=True)
	cur.execute(qry)
	con.commit()
	result=cur.rowcount
	cur.close()
	con.close()
	return result
def delete(qry):
	con=mysql.connector.connect(user="root",password=password,host="localhost",database=database)
	cur=con.cursor(dictionary=True)
	cur.execute(qry)
	con.commit()
	result=cur.rowcount
	cur.close()
	con.close()
	return result


