import 'package:exam_app/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF029EB9),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.keyboard_backspace,
              size: 35,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context)),
        elevation: 0,
        title: Text(
          "Reset Password",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: WaveClipperOne(reverse: false),
            child: Container(
              height: 120,
              color: Color(0XFF029EB9),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Card(
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(10)),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          password(),
                          confirmpassword(),
                          verifyButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  password() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15, top: 20, bottom: 12),
      child: TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            labelText: 'Password *',
            suffixIcon: Icon(Icons.visibility)),
      ),
    );
  }

  confirmpassword() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15, top: 20, bottom: 30),
      child: TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            labelText: 'Confirm Password *',
            suffixIcon: Icon(Icons.visibility)),
      ),
    );
  }

  verifyButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profile()),
        );
      },
      child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white38,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
            color: Color(0XFF029EB9),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topLeft: Radius.circular(0),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(0)),
          ),
          margin: EdgeInsets.zero,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text(
              "VERIFY", style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'OpenSens', fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
