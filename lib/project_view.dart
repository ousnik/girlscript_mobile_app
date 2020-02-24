import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Project.dart';


Widget projectCardBuilder(context,list,index) {
  return Card(
    elevation: 10.0,
    margin: const EdgeInsets.symmetric(horizontal:24.0,vertical:16.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(topLeft:Radius.circular(15.0),topRight:Radius.circular(15.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(right:24.0),
                  child: Text(
                    list[index].title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  alignment: Alignment.centerRight,
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/images/GitHub_link_light.png')
                ),
                onTap: () => launch(list[index].projectLink),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 24.0),
          child: Text(
            list[index].description,
            softWrap: true,
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ),
  );
}

Widget socialCardBuilder () {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0,top: 12.0),
        child: InkWell(
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
          onTap: ()=>launch('https://github.com/girlscriptchennai'),
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
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                          height: 50,
                          width: 50,
                          child: Image.asset('assets/images/fb_link.png')
                      ),
                      onTap: () => launch('https://www.facebook.com/girlscriptchennai/'),
                    ),
                    InkWell(
                      child: Container(
                          height: 50,
                          width: 50,
                          child: Image.asset('assets/images/ig_link.png')
                      ),
                      onTap: () => launch('https://www.instagram.com/girlscriptchennai/'),
                    ),
                    InkWell(
                      child: Container(
                          color: Colors.transparent,
                          height: 50,
                          width: 50,
                          child: Image.asset('assets/images/linkedin_link.png')
                      ),
                      onTap: ()=> launch('https://www.linkedin.com/company/girlscript-chennai/'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

class ProjectView extends StatefulWidget {
  ProjectView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {

  final List<Project> projectsList =
  [
    Project('PyMailer','A crisp python script to send emails ','https://github.com/girlscriptchennai/PyMailer'),
    Project('PyCSVConverter','A handy script to convert a particular sheet of an xlsx file to a csv file ','https://github.com/girlscriptchennai/PyCSVConverter'),
    Project('PyQRCodeGen','A simple script written using Python to generate minimalistic   QRCodes','https://github.com/ousnik/PyQRCodeGen'),
    Project('girlscriptchennai.github.io','GirlScript Website 2','https://github.com/girlscriptchennai/girlscriptchennai.github.io'),
    Project('website','GirlScript Website 1','https://github.com/girlscriptchennai/website'),
    Project('VPTS','Vehicle Position Tracking System, Real time tracking system can transmit the collected information about the vehicles location on mobile app.','https://github.com/girlscriptchennai/VPTS'),
    Project('IMR','Small,basic app using android studio','https://github.com/girlscriptchennai/IMR'),
    Project('girlscript_app','An interactive app for the GirlScript Community','https://github.com/girlscriptchennai/girlscript_app'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        mainAxisSize: MainAxisSize.min,
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
          Flexible(
            fit: FlexFit.loose,
            child: ListView.builder(
              padding: EdgeInsets.only(bottom: 36),
              itemCount: projectsList.length+1,
              itemBuilder: (BuildContext context, int index){
                if(index==0) {
                  return socialCardBuilder();
                }
                else
                  return projectCardBuilder(context, projectsList, index-1);
              }
            ),
          ),
        ],
      ),
    );
  }
}

//GridView.count(
//scrollDirection: Axis.vertical,
//shrinkWrap: true,
//crossAxisCount: 2,
//childAspectRatio: .7,
//children: List.generate(projectsList.length, (index){
//return projectCardBuilder(
//projectsList[index].title,
//projectsList[index].description
//);
//}),
//),