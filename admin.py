from flask import *
from database import *
import uuid   

admin=Blueprint('admin',__name__)

@admin.route('/adminhome')
def adminhome():
	if session.get("lid"):
		return render_template('adminhome.html')
	else:
		return redirect(url_for("public.login"))


import uuid
@admin.route('/admin_manage_recipy',methods=['get','post'])
def admin_manage_recipy():

    data={}
    q="SELECT * FROM recipy "
    res=select(q)
    data['grivance']=res

    if 'submit' in request.form:
        name=request.form['name']
        inc=request.form['inc']
        dtls=request.form['dtls']
        diet=request.form['diet']
        image=request.files['image']
        path="static/"+str(uuid.uuid4())+image.filename
        image.save(path)
        video=request.files['video']
        path2="static/"+str(uuid.uuid4())+video.filename
        video.save(path2)

        q="insert into recipy values(null,'%s','%s','%s','%s','%s','%s')"%(name,inc,path,path2,dtls,diet)

        insert(q)
        flash('inserted successfully')
        return redirect(url_for('admin.admin_manage_recipy'))

    return render_template('admin_manage_recipy.html',data=data)
