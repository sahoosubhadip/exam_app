import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GeneratePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GeneratePageState();
}

class GeneratePageState extends State<GeneratePage> {
  String qrData = "";
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    ScreenUtil.init(context,
        width: _width, height: _height, allowFontScaling: true);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          overflow: Overflow.visible,

          children: [
            Container(
                height: _height * 0.30,
                child: Image.asset(
                  'assets/pizza.png',
                  fit: BoxFit.cover,
                )),
            Column(
              children: <Widget>[
                SizedBox(
                  height: _height * 0.25,
                ),
                QrImage(
                  //plce where the QR Image will be shown
                  data: qrData,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Center(
                    child: Text(
                      'John Doe ',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )),
                SizedBox(
                  height: 25,
                ),
                Center(
                    child: Text(
                      '606 754 434',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: FlatButton(
                    color: Color(0XFF029EB9),
                    padding: EdgeInsets.all(15.0),
                    onPressed: () async {
                      if (qrdataFeed.text.isEmpty) {
                        //a little validation for the textfield
                        setState(() {
                          qrData = "";
                        });
                      } else {
                        setState(() {
                          qrData = qrdataFeed.text;
                        });
                      }
                    },
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Text(
                        "Go Back",
                        style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        side:
                        BorderSide(color: Color(0XFF029EB9), width: 3.0),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                )
              ],
            ),
          ],
          //child:
        ),
      ),
    );
  }

  final qrdataFeed = TextEditingController();
}
