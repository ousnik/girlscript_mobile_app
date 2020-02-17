import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return girlScriptLogo();
  }
}

class ProjectView extends StatelessWidget {
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
        child: CircleAvatar(
          backgroundImage: ExactAssetImage('assets/images/girlscriptlogo.jpg'),
          radius: 45,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          border:  Border.all(
            color: Colors.white,
            style:
            BorderStyle.solid,
            width: 2.0,
          ),
        ),
      ),
    ),
  );
}