import 'package:exam_app/Carosoul.dart';
import 'package:exam_app/CustomDrawer.dart';
import 'package:flutter/material.dart';


class LoadRewards extends StatefulWidget {
  @override
  _LoadRewardsState createState() => _LoadRewardsState();
}

class _LoadRewardsState extends State<LoadRewards> with SingleTickerProviderStateMixin {
  TabController tabController;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  TabBar _getTabBar() {
    return TabBar(
      labelColor: Colors.black,
      labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      tabs: <Widget>[
        Tab(text: 'Rewards'),
        Tab(text: 'History'),
      ],
      controller: tabController,
    );
  }

  TabBarView _getTabBarView(tabs) {
    return TabBarView(
      children: tabs,
      controller: tabController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Load Rewards', style: TextStyle(fontFamily: 'Montserrat', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25.0)),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Image.asset('assets/menu.png', width: 18, fit: BoxFit.fitWidth,),
            onPressed: () => _drawerKey.currentState.openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/qrcode.png'),
            onPressed: () {
            },
          ),
        ],
      ),
      drawer: CustomDrawer(),
      backgroundColor: Color(0XFF029EB9),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 15),
          height: MediaQuery.of(context).size.height - 100.0,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 12, right: 30, left: 30),
                child: Row(
                  children: <Widget>[
                    Text("Current Points", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey, fontFamily: ''),),
                    Spacer(),
                    Text("14", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.blueAccent, fontFamily: "Bahnschrift"),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: _getTabBar(),
              ),
              _getTabBarView(
                <Widget>[
                  _listPage(),
                  Container(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  _listPage(){
    return ListView(
      padding: EdgeInsets.only(top: 110, left: 15, right: 16),
      children: [

        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Carosoul()));
          },
          child: Card(
            elevation: 0,
            color: Color(0XFFF5F5F5),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListTile(
                  title: Text("Get 20% Discount", style: TextStyle(fontSize: 18),),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Text("5", style: TextStyle(fontSize: 18, color: Color(0xFF029EB9), fontWeight: FontWeight.bold, fontFamily: 'Bahnschrift'),),
                        Text("points", style: TextStyle(
                            fontSize: 12,
                            color: Colors.black26
                        ),),
                      ],
                    ),
                  )
              ),
            ),
          ),
        ),

        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Carosoul()));
          },
          child: Card(
            elevation: 0,
            color: Color(0XFFF5F5F5),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListTile(
                  title: Text("Get 20% Discount", style: TextStyle(fontSize: 18),),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Text("10", style: TextStyle(fontSize: 18, color: Color(0xFF029EB9), fontWeight: FontWeight.bold, fontFamily: 'Bahnschrift'),),
                        Text("points", style: TextStyle(
                            fontSize: 12,
                            color: Colors.black26
                        ),),
                      ],
                    ),
                  )
              ),
            ),
          ),
        ),

        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Carosoul()));
          },
          child: Card(
            elevation: 0,
            color: Color(0XFFF5F5F5),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListTile(
                  title: Text("Get 20% Discount", style: TextStyle(fontSize: 18),),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Text("15", style: TextStyle(fontSize: 18, color: Color(0xFF029EB9), fontWeight: FontWeight.bold, fontFamily: 'Bahnschrift'),),
                        Text("points", style: TextStyle(
                            fontSize: 12,
                            color: Colors.black26
                        ),),
                      ],
                    ),
                  )
              ),
            ),
          ),
        ),

        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Carosoul()));
          },
          child: Card(
            elevation: 0,
            color: Color(0XFFF5F5F5),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListTile(
                  title: Text("Get 20% Discount", style: TextStyle(fontSize: 18),),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Text("20", style: TextStyle(fontSize: 18, color: Color(0xFF029EB9), fontWeight: FontWeight.bold, fontFamily: 'Bahnschrift'),),
                        Text("points", style: TextStyle(
                            fontSize: 12,
                            color: Colors.black26
                        ),),
                      ],
                    ),
                  )
              ),
            ),
          ),
        ),

        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Carosoul()));
          },
          child: Card(
            elevation: 0,
            color: Color(0XFFF5F5F5),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListTile(
                  title: Text("Get 20% Discount", style: TextStyle(fontSize: 18),),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Text("25", style: TextStyle(fontSize: 18, color: Color(0xFF029EB9), fontWeight: FontWeight.bold, fontFamily: 'Bahnschrift'),),
                        Text("points", style: TextStyle(
                            fontSize: 12,
                            color: Colors.black26
                        ),),
                      ],
                    ),
                  )
              ),
            ),
          ),
        ),

      ],
    );
  }



}
