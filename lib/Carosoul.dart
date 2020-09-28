import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Carosoul extends StatefulWidget {
  @override
  _CarosoulState createState() => _CarosoulState();
}

class _CarosoulState extends State<Carosoul> {

  int _current = 0;
  List imgList = [
    'assets/slide_1.jpg',
    'assets/slide_2.jpg',
    'assets/slide_3.jpg',
    'assets/slide_4.jpg',
    'assets/slide_6.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('Get 20% Discount', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),)
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipperOne(reverse: false),
              child: Container(
                height: 125,
                color: Color(0xff029EB9),
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 20),
              child: CarouselSlider(
                height: MediaQuery.of(context).size.height - 250,
                initialPage: 0,
                enlargeCenterPage: false,
                autoPlay: true,
                reverse: false,
                enableInfiniteScroll: false,
                autoPlayInterval: Duration(hours: 2),
                autoPlayAnimationDuration: Duration(seconds: 2000),
                pauseAutoPlayOnTouch: Duration(seconds: 1),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.all(const  Radius.circular(15.0)),),
                        //child: Image.network(imgUrl, fit: BoxFit.fitHeight,),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(imgUrl, fit: BoxFit.fitHeight,),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),

            Positioned(
              bottom: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: map<Widget>(imgList, (index, url) {
                      return Container(
                        width: 20.0,
                        height: 5.0,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(shape: BoxShape.rectangle, color: _current == index ? Color(0xFF029EB9) : Color(0xFF03b1cf),),
                      );
                    }),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0), side: BorderSide(color: Colors.white)),
                        color: Color(0xff029EB9),
                        textColor: Colors.white,
                        padding: EdgeInsets.fromLTRB(90, 15, 90, 15),
                        onPressed: () {
                          _showMyDialog();
                        },
                        child: Text("select reward".toUpperCase(), style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure you want to select this reward?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('NO'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('YES'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

}
