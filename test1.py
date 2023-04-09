import mysql.connector
import hashlib
from flask import Flask,request,jsonify


try:
    con= mysql.connector.connect(host="localhost",
                                 user="root",
                                 password="8879309285@Adu",
                                 database="facial_recog")
    curs=con.cursor()
except Exception as e:
    print(e)
    exit()

app= Flask(__name__)

@app.route("/")
def main():
    return ""

@app.route("/userAuth",methods=["POST"])
def verify():
    data=request.json
    uid=data["user_id"]
    pw=data["user_pw"]
    
    curs.execute("select passw from login_info where user_id='"+uid+"'")

    password=curs.fetchone()

    if not password:
        return jsonify(status="NOT_USER")
    
    password=password[0]
    pw=pw.encode()
    pw=hashlib.md5(pw)
    pw=pw.hexdigest()

    if password==pw:
        return jsonify(username=uid,status="ACCEPTED")
    else:
        return jsonify(status="REJECTED")
    

if __name__=="__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)


