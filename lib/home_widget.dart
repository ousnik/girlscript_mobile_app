import 'package:flutter/material.dart';
import 'pages.dart';
import 'event_view.dart';
import 'about_view.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeView(),
    EventView(),
    ProjectView(),
    TeamView(),
    AboutView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/gslogo.png",
            )
        ),
        backgroundColor: Colors.black,
        title: Text("GirlScript Chennai"),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFFE0E0E0),
          onTap: onTabTapped,
          selectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          elevation: 16.0,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.event),
              title: new Text("Events"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.assignment),
              title: new Text("Projects"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.supervisor_account),
              title: new Text("Our Team"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.info),
              title: new Text("About Us"),
            ),
          ]
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

//body: _children[_currentIndex],
//bottomNavigationBar: BottomNavigationBar(
//type: BottomNavigationBarType.fixed,
//backgroundColor: Color(0xFFE0E0E0),
//onTap: onTabTapped,
//currentIndex: _currentIndex,
//elevation: 16.0,
//items: [
//BottomNavigationBarItem(
//icon: new Icon(Icons.home),
//title: new Text("Home"),
//),
//BottomNavigationBarItem(
//icon: new Icon(Icons.event),
//title: new Text("Events"),
//),
//BottomNavigationBarItem(
//icon: new Icon(Icons.assignment),
//title: new Text("Projects"),
//),
//BottomNavigationBarItem(
//icon: new Icon(Icons.supervisor_account),
//title: new Text("Our Team"),
//),
//BottomNavigationBarItem(
//icon: new Icon(Icons.info),
//title: new Text("About Us"),
//),
//]
//),