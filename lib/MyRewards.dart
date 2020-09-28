import 'package:exam_app/CustomDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'AllStarsMeal.dart';

class MyRewards extends StatefulWidget {
  @override
  _MyRewardsState createState() => _MyRewardsState();
}

class _MyRewardsState extends State<MyRewards> {

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    ScreenUtil.init(context, width: _width, height: _height, allowFontScaling: true);

    return Scaffold(
        key: _drawerKey,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {},
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Image.asset('assets/menu.png', width: 18, fit: BoxFit.fitWidth),
              onPressed: () => _drawerKey.currentState.openDrawer(),
            ),
          ),
          elevation: 0,
          centerTitle: true,
          title: Text('My Rewards'),
        ),
        drawer: CustomDrawer(),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              ClipPath(
                clipper: WaveClipperOne(reverse: false),
                child: Container(
                  height: 125,
                  color: Color(0XFF029EB9),
                ),
              ),
              Column(
                children: [
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
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0)),
                                  ),
                                ),
                                Positioned(
                                  top: 110,
                                  bottom: 15,
                                  right: 0,
                                  child: Container(
                                    height: _height * 0.33 * 0.15,
                                    width: (_width - 30) * 0.29,
                                    decoration: BoxDecoration(border: Border.all(color: Colors.white38, width: 1,), borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), bottomLeft: Radius.circular(15.0),), color: Colors.black.withOpacity(0.3)),
                                    child: Center(child: Text('10 Points', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 18,),)),
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
              ),
            ],
          ),
        ));
  }
}
