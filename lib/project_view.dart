import 'package:flutter/material.dart';

class ProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:40.0,bottom: 40.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                    children: [
                      TextSpan(text: 'OUR ', style: TextStyle(color: Colors.black)),
                      TextSpan(text: 'PROJECTS'
                          '', style: TextStyle(color: Colors.deepOrange)),
                    ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Card(
                elevation: 18,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                          height: 50,
                          width: 50,
                          child: Image.asset('assets/images/GitHub_link.png')
                      ),
                      Text(
                          'TAKE A LOOK AT OUR PROJECTS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,left: 24.0, right: 24.0),
              child: Card(
                color: Colors.black,
                elevation: 18,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                        child: Text(
                            'WANT TO COLLABORATE WITH US ON A PROJECT ?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.white
                            ),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:16.0,bottom: 16.0),
                        child: Text(
                          'CONNECT WITH US NOW',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/fb_link.png')
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/ig_link.png')
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/WhatsApp_link.png')
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}