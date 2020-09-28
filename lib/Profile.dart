import 'dart:ui';

import 'package:exam_app/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF029EB9),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Create Profile",
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
                  padding:
                      const EdgeInsets.only(top: 45.0, left: 20, right: 20),
                  child: Card(
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
                          pic(),
//                          SizedBox(
//                            height: 10,
//                          ),
                          Text(
                            '123456',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          fullName(),
                          email(),
                          password(),
                          regButton(),
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

  pic() {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Positioned(
          bottom: 30,
          child: GestureDetector(
            onTap: () {
              print('pic');
            },
            child: CircleAvatar(
              radius: 57,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://d2c7ipcroan06u.cloudfront.net/wp-content/uploads/2020/01/pk12-696x392.jpg')),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 67, bottom: 19),
          child: FloatingActionButton(
            //shape: ,
            mini: true,
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.blueGrey,
          ),
        ),
      ],
    );
  }

  fullName() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
          labelText: 'Full Name',
        ),
      ),
    );
  }

  email() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          hintText: 'example@mail.com',
          labelText: 'Email *',
        ),
      ),
    );
  }

  password() {
    const IconData visibility = const IconData(0xf424, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage);
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15, top: 20, bottom: 30),
      child: TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
              labelText: 'Password *',
              suffixIcon: Icon(visibility, size: 35,)
        ),
      ),
    );
  }

  regButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      },
      child: Container(
          padding: EdgeInsets.all(10),
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
              "Register".toUpperCase(),
              style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'OpenSens', fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
