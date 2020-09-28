import 'dart:async';

import 'package:exam_app/ResetPassword.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class Verification2 extends StatefulWidget {
  @override
  _Verification2State createState() => _Verification2State();
}

class _Verification2State extends State<Verification2> {
  int _counter = 10;
  Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _counter = 10;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.keyboard_backspace,
              size: 35,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context)),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Text(
            "Verification",
            style: TextStyle(fontSize: 25),
          ),
        ),
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
                    width: 400,
                    //height: 300,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 15.0),
                          child: Text(
                            'Please enter verification code sent on \n'
                            '                your mobile number',
                            style: TextStyle(fontSize: 15.5),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, right: 20, left: 20, bottom: 15),
                          child: PinEntryTextField(
                            //isTextObscure: true,
                            showFieldAsBox: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, right: 20, left: 30, bottom: 5),
                          child: Container(
                            child: GestureDetector(
                              onTap: () {}, // => _startTimer(),
                              child: Text(
                                "{Countdown}",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 56, left: 60, bottom: 15),
                          child: Container(
                            child: GestureDetector(
                                onTap: () {
                                  print('hi');
                                },
                                child: Text(
                                  "RESEND",
                                  style: TextStyle(
                                      color: Color(0XFF029EB9),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResetPassword()),
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
                          "VERIFY",
                          style: TextStyle(fontSize: 25, color: Colors.white),
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
