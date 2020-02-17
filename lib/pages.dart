import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return girlScriptLogo();
  }
}

class TeamView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return girlScriptLogo();
  }
}

Widget girlScriptLogo(){
  return Container(
    color: Color(0xFF000000),
    child: Center(
      child: Container(
        height: 200,
        width: 200,
        child: Image.asset('assets/images/gslogo.png')
      ),
    ),
  );
}