from flask import *
from database import *
public=Blueprint('public',__name__)

@public.route('/')
def home():
	return render_template('publichome.html')



@public.route('/login',methods=['get','post'])
def login():
	session.clear()
	if "submit" in request.form:
		u=request.form['uname']
		p=request.form['password']
		q="select * from login where username='%s' and password='%s'"%(u,p)
		print(q)
		res=select(q)
		if res:
			session['lid']=res[0]['login_id']
			if res[0]['usertype']=="admin":
				flash("Logging in")			
				return redirect(url_for("admin.adminhome"))

			else:
				flash("Registration Under Process")
		flash("You are Not Registered")

	return render_template('login.html')