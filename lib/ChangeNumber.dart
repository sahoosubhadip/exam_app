import 'package:exam_app/Verify3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


class ChangeNumber extends StatefulWidget {
  @override
  _ChangeNumberState createState() => _ChangeNumberState();
}

class _ChangeNumberState extends State<ChangeNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF029EB9),
        centerTitle: true,
        leading: IconButton(
            tooltip: 'Back',
            icon: Icon(
              Icons.keyboard_backspace,
              size: 35,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0,
        title: Text(
          "Change Number",
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
                      const EdgeInsets.only(left: 15.0, right: 15, top: 25),
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
                          text(),
                          SizedBox(
                            height: 20,
                          ),
                          mobile(),
                          SizedBox(
                            height: 25,
                          ),
                          nextButton(),
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

  text() {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Text(
          '''Please enter your new mobile number and''',
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'we will send you the verification code.',
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }

  mobile() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15, top: 20, bottom: 40),
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          labelText: 'New Mobile Number',
        ),
      ),
    );
  }

  nextButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Verify3()),
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
              "NEXT",
              style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
