
import 'package:flutter/material.dart';

String summary = '''GirlScript is a section-8 NON PROFIT company registered under the government of India on the 2nd of June, 2017. GirlScript is open for all organisation and supports beginners in technology and programming. It supports diversity by reserving 50% seats for women & LGBTQ in all it's programs worldwide.''';

Widget _goalcard(color,goalText) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 150,
      width: 150,
      child: Card(
        elevation: 18,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 45,
                width: 45,
                child: CircleAvatar(
                  backgroundColor: color,
                  radius: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:  Border.all(
                    color: Colors.transparent,
                    style:
                    BorderStyle.solid,
                    width: 2.0,
                  ),
                ),
              ),
              Text(
                goalText,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

class AboutView extends StatelessWidget {
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
                    TextSpan(text: 'ABOUT ', style: TextStyle(color: Colors.black)),
                    TextSpan(text: 'US', style: TextStyle(color: Colors.deepOrange)),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            children: [
                              TextSpan(text: 'We are India\'s  ', style: TextStyle(color: Colors.black)),
                              TextSpan(text: 'First & Biggest ', style: TextStyle(color: Colors.deepOrange)),
                              TextSpan(text: 'Indian Origin Technical Community', style: TextStyle(color: Colors.black)),
                              TextSpan(text: '\n\n'),
                              TextSpan(
                                  text: summary,
                                  style: TextStyle(
                                      fontWeight:FontWeight.normal ,
                                      color: Color(0xFF677C91),
                                      fontSize: 14,
                                  )
                              ),
                            ]
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:46.0,bottom:32.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    children: [
                      TextSpan(text: 'OUR ', style: TextStyle(color: Colors.black)),
                      TextSpan(text: 'GOALS', style: TextStyle(color: Colors.deepOrange)),
                    ]
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:16.0,right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _goalcard(Color(0xffeb5310), 'WOMEN IN TECH'),
                      _goalcard(Color(0xffd10000), 'AWARENESS ABOUT \nTECH'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:16.0,right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _goalcard(Color(0xff10ebc6), 'SCHOLARSHIP AND FELLOWSHIP'),
                      _goalcard(Color(0xffc500a6), 'WOMEN IN TECH'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:16.0,right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _goalcard(Color(0xff002293), 'AWARENESS ABOUT \nTECH'),
                      _goalcard(Color(0xff00950a), 'SCHOLARSHIP AND FELLOWSHIP'),
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}