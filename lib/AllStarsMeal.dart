import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllStarsMeal extends StatefulWidget {
  @override
  _AllStarsMealState createState() => _AllStarsMealState();
}

class _AllStarsMealState extends State<AllStarsMeal> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    ScreenUtil.init(context, width: _width, height: _height, allowFontScaling: true);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
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
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                          height: _height * 0.24,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60.h,
                                            width: 60.w,
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                              ),
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'assets/logo.png'),
                                                radius: 28,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Pizza Hut',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black),
                                              textAlign: TextAlign.left,
                                            ),
                                            Text(
                                              'Pizza',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black45),
                                              textAlign: TextAlign.left,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 13, right: 10),
                                      child: GestureDetector(
                                        onTap: (){
                                          print('object');
                                          _showModalBottomSheet(context);
                                        },
                                        child: Icon(
                                          Icons.info_outline,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text('My Points',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black45)),
                                        Text('100',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black)),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text('My Points',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black45)),
                                        Text('100',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black)),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text('My Points',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black45)),
                                        Text('100',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black)),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: _height * 0.005,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                          height: _height * 0.33,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                Stack(children: <Widget>[
                                  Container(
                                    height: _height * 0.33 * 0.75,
                                    width: _width - 30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/pizza.png'),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15.0),
                                          topLeft: Radius.circular(15.0)),
                                    ),
                                  ),
                                  Positioned(
                                    top: 110,
                                    bottom: 15,
                                    right: 0,
                                    child: Container(
                                      height: _height * 0.33 * 0.15,
                                      width: (_width - 30) * 0.29,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.white38,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15.0),
                                            bottomLeft: Radius.circular(15.0),
                                          ),
                                          color: Colors.black.withOpacity(0.3)),
                                      child: Center(
                                          child: Text(
                                        '10 Points',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                        fontSize: 18,
                                        ),
                                      )),
                                    ),
                                  ),
                                ]),
                                SizedBox(
                                  height: _height * 0.0157,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.0, right: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text('Special Deal 100% OFF',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black)),
                                      Text('Expires in 3 days',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black45)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: _height * 0.005,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                          height: _height * 0.33,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                Stack(children: <Widget>[
                                  Container(
                                    height: _height * 0.33 * 0.75,
                                    width: _width - 30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/pizza.png'),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15.0),
                                          topLeft: Radius.circular(15.0)),
                                    ),
                                  ),
                                  Positioned(
                                    top: 110,
                                    bottom: 15,
                                    right: 0,
                                    child: Container(
                                      height: _height * 0.33 * 0.15,
                                      width: (_width - 30) * 0.29,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.white38,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15.0),
                                            bottomLeft: Radius.circular(15.0),
                                          ),
                                          color: Colors.black.withOpacity(0.3)),
                                      child: Center(
                                          child: Text(
                                            '10 Points',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          )),
                                    ),
                                  ),
                                ]),
                                SizedBox(
                                  height: _height * 0.0157,
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 8.0, right: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text('Special Deal 100% OFF',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black)),
                                      Text('Expires in 3 days',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black45)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: _height * 0.005,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                          height: _height * 0.33,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                Stack(children: <Widget>[
                                  Container(
                                    height: _height * 0.33 * 0.75,
                                    width: _width - 30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/pizza.png'),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15.0),
                                          topLeft: Radius.circular(15.0)),
                                    ),
                                  ),
                                  Positioned(
                                    top: 110,
                                    bottom: 15,
                                    right: 0,
                                    child: Container(
                                      height: _height * 0.33 * 0.15,
                                      width: (_width - 30) * 0.29,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.white38,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15.0),
                                            bottomLeft: Radius.circular(15.0),
                                          ),
                                          color: Colors.black.withOpacity(0.3)),
                                      child: Center(
                                          child: Text(
                                            '10 Points',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          )),
                                    ),
                                  ),
                                ]),
                                SizedBox(
                                  height: _height * 0.0157,
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 8.0, right: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text('Special Deal 100% OFF',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black)),
                                      Text('Expires in 3 days',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black45)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );


  }
  _showModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height - 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),

            ),
            Positioned(
              top: -25,
              child: Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/qrr.png'),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Special Deal 100% OFF',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '606 312 16',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                 height: 45,
                    width: 150,
                    child: FlatButton(
                      onPressed: (){},
                      color: Color(0XFF029EB9),
                      child: Text('Go Back'),
                      shape: RoundedRectangleBorder(
                          side:
                          BorderSide(color: Color(0XFF029EB9), width: 3.0),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
