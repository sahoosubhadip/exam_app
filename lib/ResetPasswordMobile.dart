import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


import 'Verification.dart';

class ResetPasswordMobile extends StatefulWidget {
  @override
  _ResetPasswordMobileState createState() => _ResetPasswordMobileState();
}

class _ResetPasswordMobileState extends State<ResetPasswordMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF029EB9),
        centerTitle: true,
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
              height: 125,
              color: Color(0XFF029EB9),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Card(
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          text(),
                          mobile(),
                          nextButton(),
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

  text() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "Please enter your mobile number and we will ",
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "send you the verification code",
        )
      ],
    );
  }

  mobile() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15, top: 20, bottom: 40),
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          labelText: 'Mobile Number',
        ),
      ),
    );
  }

  nextButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Verification()),
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
              "NEXT".toUpperCase(),
              style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'OpenSens', fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
