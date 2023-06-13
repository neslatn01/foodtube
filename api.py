from flask import *
from database import *
import uuid 

api=Blueprint('api',__name__)


@api.route("/login")
def login():
    data={}
    uname=request.args['username']
    password=request.args['password']
    q="select * from login where username='%s' and password='%s'"%(uname,password)
    res=select(q)
    if res:
        data['status']="success"
        data['data']=res
    else:
        data['status']="failed"
    return str(data)


@api.route("/reg",methods=['get','post'])
def reg():
    data={}

    fname=request.args['fname']
    lname=request.args['lname']
    place=request.args['place']
    phone=request.args['phone']
    email=request.args['email']
    username=request.args['uname']
    password=request.args['pass']
   

    q="select * from login where username='%s'"%(username)
    rep=select(q)

    if rep:
        data['status']='already'
    else:
        q="insert into `login` values(NULL,'%s','%s','user') "%(username,password)
        ref=insert(q)
        v="insert into `user` values(NULL,'%s','%s','%s','%s','%s','%s') "%(ref,fname,lname,phone,email,place)
        insert(v)
        data['status']='success'
    data['method']="reg"
    return str(data)



@api.route("/view_recipy")
def view_recipy():
    data={}
    q="SELECT * FROM recipy"
    res=select(q)
    if res:
        data['status']="success"
        data['data']=res
    else:
        data['status']="failed"
    data['method']="view_recipy"
    return str(data)
