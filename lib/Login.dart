import 'dart:ui';
import 'package:exam_app/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'ResetPassword.dart';
import 'ResetPasswordMobile.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF029EB9),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Login",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: WaveClipperOne(reverse: false),
            child: Container(
              height: 125,
              color: Color(0XFF029EB9),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15.0, right: 15, left: 15, bottom: 1),
                  child: Card(
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only( bottomLeft: Radius.circular(20), topLeft: Radius.circular(10), bottomRight: Radius.circular(20), topRight: Radius.circular(10)),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          email(),
                          password(),
                          loginButton(),
                        ],
                      ),
                    ),
                  ),
                ),
                regButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  email() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
              hintText: 'example@mail.com',
              labelText: 'Email *',
        ),
      ),
    );
  }

  password() {

    const IconData visibility = const IconData(0xf424, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage);

    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15, top: 30, bottom: 10),
          child: TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelText: 'Password *',
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(0),
                      child: Icon(visibility, size: 35,),
                    )
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 40, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Can't login?", style: TextStyle(fontSize: 16, fontFamily: 'OpenSens'),),
              FlatButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword()),);
              }, child: Text("Forgot Password !", style: TextStyle(color: Color(0XFF029EB9), fontFamily: 'OpenSens'),))
            ],
          ),
        ),
      ],
    );
  }

  loginButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ResetPasswordMobile()),
        );
      },
      child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.white38, offset: Offset(0.0, 1.0), //(x,y)blurRadius: 6.0,
              ),
            ],
            color: Color(0XFF029EB9),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topLeft: Radius.circular(0), bottomRight: Radius.circular(20), topRight: Radius.circular(0)),
          ),
          margin: EdgeInsets.zero,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text("Login".toUpperCase(), style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'OpenSens', fontWeight: FontWeight.bold),),
          )),
    );
  }

  regButton() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 40.0,
          left: 40.0,
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topLeft: Radius.circular(0), bottomRight: Radius.circular(20), topRight: Radius.circular(0)),
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an Account? ", style: TextStyle(fontSize: 14, fontFamily: 'OpenSens'),),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child: Text("Register ", style: TextStyle(fontSize: 16, color: Colors.cyan, fontFamily: 'OpenSens'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
