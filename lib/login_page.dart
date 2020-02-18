import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top:24.0,bottom: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:36.0,bottom: 10.0),
              child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/gslogo.png')
              ),
            ),
            Text(
                '<CHENNAI>',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 6.0,
                    color: Colors.deepOrange
                )
            ),
            Padding(
              padding: const EdgeInsets.only(top:12.0,bottom: 8.0),
              child: RichText(
                textAlign: TextAlign.center,
                text:TextSpan(
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2
                    ),
                    children: [
                      TextSpan(text: 'LET\'S '),
                      TextSpan(text: 'CODE ',style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.w500)),
                      TextSpan(text: 'FOR FREEDOM'),
                    ]
                ),
              ),
            ),
            TextField(),
            TextField()
          ],
        ),
      ),
    );
  }
}