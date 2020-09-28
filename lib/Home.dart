import 'dart:ui';
import 'package:exam_app/CustomDrawer.dart';
import 'package:exam_app/Stores.dart';
import 'package:exam_app/constantsFoodBanar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final CategoriesScroller categoriesScroller = CategoriesScroller();
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = FOOD_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(
        Container(
          height: 180,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(post["image"]),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
              ]),
        ),
      );
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {

      double value = controller.offset/119;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 50;
      });
    });
  }


  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    ScreenUtil.init(context,width: _width, height: _height, allowFontScaling: true);
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height*0.45;


    return Scaffold(
      key: _drawerKey,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Image.asset('assets/menu.png', width: 18, fit: BoxFit.fitWidth,),
            onPressed: () => _drawerKey.currentState.openDrawer(),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Stores()));
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showModalBottomSheet(context);
        },
        child: Image.asset('assets/qrcode.png'),
        backgroundColor: Color(0xff029EB9),
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: WaveClipperOne(reverse: false),
                    child: Container(
                      height: 125,
                      color: Color(0xff029EB9),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 10),
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 5,
                          color: Color(0xffFEE000),
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topLeft: Radius.circular(10), bottomRight: Radius.circular(10), topRight: Radius.circular(10))
                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 210,
                                child: Image.asset('assets/card_bg.png', fit: BoxFit.fitHeight),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
                                        Text('LOAD', style: TextStyle(color: Colors.black54, fontSize: 25, fontWeight: FontWeight.bold)),
                                        Spacer(),
                                        Column(
                                          children: <Widget>[
                                            Text('1500', style: TextStyle( color: Colors.black54, fontSize: 25, fontWeight: FontWeight.bold)),
                                            Text('Points', style: TextStyle( color: Colors.black54, fontSize: 15)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 15, bottom: 10),
                                    child: CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage('assets/avatar.png')
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10, left: 15),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Abdullah Salah'.toUpperCase(), textAlign: TextAlign.left, style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                                            Text('+965 55111111'.toUpperCase(), textAlign: TextAlign.left,style: TextStyle(color: Colors.black, fontSize: 12),),
                                          ],
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: EdgeInsets.only(right: 0.0),
                                          child: FlatButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), topLeft: Radius.circular(30), bottomRight: Radius.circular(0), topRight: Radius.circular(0)),
                                            ),
                                            color: Colors.black54,
                                            onPressed: () {},
                                            child: Text('Check Rewards', style: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.bold),),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
//              AnimatedOpacity(
//                duration: const Duration(milliseconds: 200),
//                opacity: closeTopContainer?0:1,
//                child: AnimatedContainer(
//                    duration: const Duration(milliseconds: 200),
//                    width: size.width,
//                    alignment: Alignment.topCenter,
//                    height: closeTopContainer?0:categoryHeight,
//                    child: categoriesScroller),
//              )
            Container(
              padding: EdgeInsets.only(left: 15, right: 0),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/burger.png"),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(left: 15, top: 70),
                        child: Text("Burger".toUpperCase(), style: TextStyle(fontSize:10, color: Colors.white, fontWeight: FontWeight.bold),)
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/burger_1.png"),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, top: 70),
                      child: Text("DONUT".toUpperCase(), style: TextStyle(fontSize:10, color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),

                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/burger_2.png"),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, top: 70),
                      child: Text("PIZZA".toUpperCase(), style: TextStyle(fontSize:10, color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),

                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/burger_3.png"),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(left: 15, top: 70),
                        child: Text("PRETZEL".toUpperCase(), style: TextStyle(fontSize:10, color: Colors.white, fontWeight: FontWeight.bold))
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: <Widget>[
                  Text('Trending', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Spacer(),
                  Text('View All', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  cardList(),
                  cardList(),
                  cardList(),
                  cardList(),
                  cardList(),
                  SizedBox(width: 15,),
                ],
              ),
            ),
            Container(
              constraints: BoxConstraints(
                maxHeight: 600,
              ),
              child: ListView.builder(
                  controller: controller,
                  itemCount: itemsData.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    double scale = 1.0;
                    if (topContainer > 0.5) {
                      scale = index + 0.5 - topContainer;
                      if (scale < 0) {
                        scale = 0;
                      } else if (scale > 1) {
                        scale = 1;
                      }
                    }
                    return Opacity(
                      opacity: scale,
                      child: Transform(
                        transform:  Matrix4.identity()..scale(scale,scale),
                        alignment: Alignment.bottomCenter,
                        child: Align(
                            heightFactor: 0.7,
                            alignment: Alignment.topCenter,
                            child: itemsData[index]),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget cardList() {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    ScreenUtil.init(context,width: _width, height: _height, allowFontScaling: true);

    return Container(
      padding: EdgeInsets.only(left: 15),
      width: _width -_width/6,
      child: Stack(
        children: <Widget>[
          Card(
            elevation: 3.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 130,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/card_image.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 80.w,top: 1.h,right: 8.0.w,),
                    child: Column(

                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('Pizza Hut',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 16.sp),),
                          ],
                        ),
                        SizedBox(height: 1.0.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('Pizza',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 12.sp,color: Colors.black45),),
                          ],
                        ),
                      ],
                    )
                )
              ],
            ),
          ),
          Positioned(
              bottom: 10,
              left: 15,
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
          )
        ],
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

class CategoriesScroller extends StatefulWidget {
  const CategoriesScroller();

  @override
  _CategoriesScrollerState createState() => _CategoriesScrollerState();
}

class _CategoriesScrollerState extends State<CategoriesScroller> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    ScreenUtil.init(context,width: _width, height: _height, allowFontScaling: true);
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 15, right: 0),
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/burger.png"),
                        fit: BoxFit.fill
                    )
                ),
                child: Padding(
                    padding: EdgeInsets.only(left: 15, top: 70),
                    child: Text("Burger".toUpperCase(), style: TextStyle(fontSize:10, color: Colors.white, fontWeight: FontWeight.bold),)
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/burger_1.png"),
                        fit: BoxFit.fill
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, top: 70),
                  child: Text("DONUT".toUpperCase(), style: TextStyle(fontSize:10, color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),

              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/burger_2.png"),
                        fit: BoxFit.fill
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, top: 70),
                  child: Text("PIZZA".toUpperCase(), style: TextStyle(fontSize:10, color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),

              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/burger_3.png"),
                        fit: BoxFit.fill
                    )
                ),
                child: Padding(
                    padding: EdgeInsets.only(left: 15, top: 70),
                    child: Text("PRETZEL".toUpperCase(), style: TextStyle(fontSize:10, color: Colors.white, fontWeight: FontWeight.bold))
                ),
              ),

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Text('Trending', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Spacer(),
              Text('View All', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Container(
          height: 190,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              cardList(),
              cardList(),
              cardList(),
              cardList(),
              cardList(),
            ],
          ),
        ),
      ],
    );
  }

  Widget cardList() {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    ScreenUtil.init(context,width: _width, height: _height, allowFontScaling: true);

    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      width: _width -_width/6,
      child: Stack(
        children: <Widget>[
          Card(
            elevation: 3.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 130,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/card_image.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 80.w,top: 1.h,right: 8.0.w,),
                    child: Column(

                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('Pizza Hut',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 16.sp),),
                          ],
                        ),
                        SizedBox(height: 1.0.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('Pizza',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 12.sp,color: Colors.black45),),
                          ],
                        ),
                      ],
                    )
                )
              ],
            ),
          ),
          Positioned(
              bottom: 10,
              left: 15,
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
          )
        ],
      ),
    );

  }
}







