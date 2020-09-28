import 'package:exam_app/Login.dart';
import 'package:exam_app/OnboardingPageview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';


import 'Verification.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff029EB9),
      body: Stack(
        children: [
          OnboardingPageview(),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0), topLeft: Radius.circular(10), bottomRight: Radius.circular(0), topRight: Radius.circular(10)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 10,),
                    Container(height: 2, width: 30, decoration: BoxDecoration(color: Color(0xff029EB9)),),
                    SizedBox(height: 10,),
                    Text('Get Started with Load', style: TextStyle( fontSize: 22, fontFamily: 'Bahnschrift'),),
                    SizedBox(height: 25,),
                    Text(
                      'Enter Your Mobile Number',
                      style: TextStyle(fontSize: 12, fontFamily: 'Bahnschrift'),
                    ),

                    Stack(
                      overflow: Overflow.visible,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 50, top: 10,),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone_android),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff029EB9), width: 2.0),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff029EB9), width: 2.0),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff029EB9), width: 2.0),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          right: 10,
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xff029EB9),
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              border: Border.all(width: 3,color: Colors.white),
                              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3.0,),]
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.white, size: 50,),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?', style: TextStyle(fontSize: 14, fontFamily: 'Bahnschrift'),),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                            },
                            child: Text(' Login', style: TextStyle(color: Colors.blue, fontFamily: 'Bahnschrift'),),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 30,
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
