import 'package:flutter/material.dart';
import 'pages.dart';
import 'event_view.dart';
import 'about_view.dart';
import 'project_view.dart';
import 'login_page.dart';

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
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              "assets/images/gslogo.png",
            )
        ),
        backgroundColor: Colors.black,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              children: [
                TextSpan(text: 'GirlScript ', style: TextStyle(color: Colors.white)),
                TextSpan(text: 'Chennai'
                    '', style: TextStyle(color: Colors.deepOrange)),
              ]
          ),
        ) ,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: IconTheme(
                data: new IconThemeData(
                    color: Colors.white),
                child: Icon(Icons.account_circle)
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          onTap: onTabTapped,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.deepOrange,
          selectedFontSize: 13,
          unselectedFontSize: 12,
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
