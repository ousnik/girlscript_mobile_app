import 'package:flutter/material.dart';
import 'home_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GirlScript",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Home(),
    );
  }

  Widget ab(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
            'assets/images/girlscriptlogo.jpg',
            fit: BoxFit.contain,
            height: 32,
        ),
        Text(' GirlScript')
      ],
    );
  }
}
