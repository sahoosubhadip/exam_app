import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'ChangeNumber.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF029EB9),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.keyboard_backspace,
              size: 35,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context)),
        elevation: 0,
        title: Text(
          "My Account",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
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
                  padding: const EdgeInsets.all(25.0),
                  child: Card(
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          pic(),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '123456',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          fullName(),
                          mobile(),
                          email(),
                          saveButton(),
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
          bottom: 20,
          child: GestureDetector(
            onTap: () {
              print('pic');
            },
            child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://www.sololearn.com/Icons/Avatars/11325816.jpg')),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 48.0, left: 65),
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

  mobile() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          labelText: 'Mobile',
        ),
      ),
    );
  }

  email() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15, top: 20, bottom: 50),
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          labelText: 'Email',
        ),
      ),
    );
  }

  saveButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChangeNumber()),
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
              "Save".toUpperCase(),
              style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
      ),
    );
  }
}
