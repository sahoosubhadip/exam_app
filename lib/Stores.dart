import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Stores extends StatefulWidget {
  @override
  _StoresState createState() => _StoresState();
}

class _StoresState extends State<Stores> {

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    ScreenUtil.init(context, width: _width, height: _height, allowFontScaling: true);
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.40;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF029EB9),
        title: PreferredSize(
          preferredSize: const Size.fromHeight(33),
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 35.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Color(0xfff9f9f9), width: 0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    children: <Widget>[
                      Text("Search Stores", style: TextStyle(color: Colors.blueGrey, fontSize: 15, fontFamily: 'OpenSans'),),
                      Spacer(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.blueGrey,
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            cardList(),
            cardList(),
            cardList(),
            cardList(),
          ],
        ),
      ),
    );
  }

  Widget cardList() {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    ScreenUtil.init(context,
        width: _width, height: _height, allowFontScaling: true);
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
      width: _width,
      child: Stack(
        children: <Widget>[
          Card(
            elevation: 3.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: <Widget>[
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/card_image.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                      left: 80.w,
                      top: 5.h,
                      bottom: 10.h,
                      right: 8.0.w,
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Pizza Hut',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  fontSize: 16.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.0.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Pizza',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  fontSize: 12.sp,
                                  color: Colors.black45),
                            ),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Positioned(
              bottom: 20.h,
              left: 15.w,
              child: Container(
                height: 60.h,
                width: 60.w,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/logo.png'),
                    radius: 28,
                  ),
                ),
              )
          ),

          Positioned(
            bottom: 35.h,
            right: 15.w,
            child: Card(
              shape: CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("100", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              ),
            ),
          )

        ],
      ),
    );
  }
}
