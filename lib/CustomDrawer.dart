import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Home.dart';
import 'LoadRewards.dart';
import 'Login.dart';
import 'MyAccount.dart';
import 'MyRewards.dart';
import 'TermsOfUse.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Row(
                children: <Widget>[
                  CircleAvatar(radius: 30.w, backgroundImage: AssetImage('assets/avatar.png')),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("John Doe", style: TextStyle(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.bold)),
                      Text(' +965 55112233', style: TextStyle(fontSize: 14),),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_forward, size: 35, color: Colors.black26,),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyAccount()));
                    },
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white10,
            ),
          ),
          ListTile(
            title: Text('Home', style: TextStyle(fontSize: 16),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Text('Load Rewards', style: TextStyle(fontSize: 16),),
                Padding(
                  padding: const EdgeInsets.only(left: 55.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25)),
                    child: Text('1500', style: TextStyle(color: Colors.amberAccent),),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoadRewards()));
                    },
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoadRewards()));
            },
          ),
          ListTile(
            title: Text('My Rewards', style: TextStyle(fontSize: 16),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyRewards()));
            },
          ),
          ListTile(
            title: Text('Get Help', style: TextStyle(fontSize: 16),),
            onTap: () {},
          ),
          ListTile(
            title: Text('Terms of Use', style: TextStyle(fontSize: 16),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Terms()));
            },
          ),
          ListTile(
            title: Text('Privacy Policy', style: TextStyle(fontSize: 16),),
            onTap: () {},
          ),
          ListTile(
            title: Text('Logout', style: TextStyle(fontSize: 16),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
        ],
      ),
    );
  }
}
