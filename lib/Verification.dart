import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

import 'Login.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  int _counter = 10;
  Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //_startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final fieldWidth = 60;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Verification", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          //shaped
          ClipPath(
            clipper: WaveClipperOne(reverse: false),
            child: Container(
              height: 125,
              color: Color(0XFF029EB9),
            ),
          ),
          //Text
          SingleChildScrollView(
            padding: const EdgeInsets.only(
                top: 30.0, right: 20, left: 20, bottom: 50),
            child: Column(
              children: [
                Card(
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(20)),
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(height: 25,),
                        Text('Please enter verification code', style: TextStyle(fontSize: 14, fontFamily: 'OpenSens'),),
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: PinEntryTextField(
                            fieldWidth: 60.0,
                            isTextObscure: true,
                            showFieldAsBox: true,
                            fontSize: 14.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25, right: 20, left: 30, bottom: 5),
                          child: Container(
                            child: GestureDetector(
                              onTap: () {}, // => _startTimer(),
                              child: Text(
                                "{Countdown}",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 56, left: 60, bottom: 15),
                          child: Container(
                            child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "RESEND",
                                  style: TextStyle(color: Color(0XFF029EB9), fontFamily: 'OpenSens', fontSize: 18, fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),);
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
                          "VERIFY",
                          style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'OpenSens', fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ],
              //decoration: BoxDecoration(),
            ),
          ),
          //boxes

          //
        ],
      ),
    );
  }
}

/*
Timer _timer;
int _start = 10;

void startTimer() {
  const oneSec = const Duration(seconds: 1);
  _timer = new Timer.periodic(
    oneSec,
        (Timer timer) => setState(
          () {
        if (_start < 1) {
          timer.cancel();
        } else {
          _start = _start - 1;
        }
      },
    ),
  );
}

@override
void dispose() {
  _timer.cancel();
  super.dispose();
}

Widget build(BuildContext context) {
  return new Scaffold(
    appBar: AppBar(title: Text("Timer test")),
    body: Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            startTimer();
          },
          child: Text("start"),
        ),
        Text("$_start")
      ],
    ),
  );
}

*/
