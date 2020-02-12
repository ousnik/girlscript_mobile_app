import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Event.dart';

class EventView extends StatelessWidget {
  final List<Event> eventsList =
      [
        Event("","","", "",DateTime.now(),"",0,""),
        Event('assets/images/girlscriptlogo.jpg','assets/images/codecru_p.jpg',"Code Crusade", "GirlScript,Chennai",
          DateTime.parse("2020-02-08 13:00:00Z"),
          "Home",0,"https://www.girlscript.tech/"),
        Event('assets/images/kzillalogo.jpg','assets/images/mozohack_p.jpg',"Mozohack Hackathon", "SRMKzilla",
            DateTime.parse("2020-03-20 09:00:00Z"),
            "SIIC, 5th Floor, BEL",0,"https://srmdsc.com/"),
        Event('assets/images/girlscriptlogo.jpg','assets/images/soc_p.jpg',"Summer of Code", "GirlScript,Chennai",
            DateTime.parse("2020-02-14 13:00:00Z"),
            "Office",0,"https://www.girlscript.tech/"),
        Event('assets/images/dsclogo.png','assets/images/apidev_p.jpg',"API Dev Workshop", "SRM DSC",
            DateTime.parse("2020-02-02 09:00:00Z"),
            "SIIC, 5th Floor, BEL",0,"https://srmdsc.com/"),
        Event('assets/images/girlscriptlogo.jpg','assets/images/letspy_p.jpg',"LetsPy", "GirlScript,Chennai",
            DateTime.parse("2020-03-20 13:00:00Z"),
            "Hilton",0,"https://www.girlscript.tech/"),
      ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              hintText: 'Search Event',
            ),
            onChanged: (string) {

            }
          ),
          new Expanded(
              child: ListView.builder(
                itemCount: eventsList.length,
                itemBuilder: (BuildContext context, int index){
                  if(index==0){
                    return eventsHeaderCard();
                  }
                  else
                    return buildEventCard(context, index);
                  },
              ),
          ),
        ],
      ),
    );
  }

  Widget buildEventCard(BuildContext context, int index){
    return Padding(
      padding: const EdgeInsets.only(left:12.0,right:12.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: eventCardFormatter(context,index),
        ),
      ),
    );
  }

  _launchURL() async {
    const url='https://www.girlscript.tech/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<bool> eventDetailDialog(context, index){
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context){
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 150,
                    ),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        color: Color(0xFFE44C25),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top:60.0),
                        child: Container(
                          height: 90,
                          width: 90,
                          child: Hero(
                            tag: eventsList[index],
                            child: CircleAvatar(
                              backgroundImage: ExactAssetImage(eventsList[index].logo),
                              radius: 45,
                            ),
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
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Flexible(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      Text(
                        eventsList[index].title,
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        eventsList[index].organiser,
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 12,
                  fit: FlexFit.loose,
                    child: Image.asset(eventsList[index].poster),
                ),
                Flexible(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(top:12.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Venue: ${eventsList[index].venue}",
                          style: TextStyle(fontFamily: 'Comfortaa',fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:4.0,bottom:4.0),
                          child: Text(
                            "Date: ${DateFormat('dd/MM/yy').format(eventsList[index].datetime)}",
                            style: TextStyle(fontFamily: 'Comfortaa',fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "Time: ${DateFormat('jm').format(eventsList[index].datetime)}",
                          style: TextStyle(fontFamily: 'Comfortaa',fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(bottom:16.0),
                  child: MaterialButton(
                      child: Text("Register",style: new TextStyle(color: Colors.white)),
                      color: Color(0xFFE44C25),
                      elevation: 2,
                      onPressed: _launchURL
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }

  Widget eventsHeaderCard(){
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Container(
        color: Color(0xFFE44C25),
        child: Center(
          child: Text(
            "EVENTS",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
//              fontStyle: FontStyle.italic,
//              fontWeight: FontWeight.bold,
              fontFamily: 'Comfortaa',
            ),
          ),
        ),
      ),
    );
  }

  Widget eventCardFormatter(BuildContext context, int index){
    return InkWell(
      onTap: ()=>{
        eventDetailDialog(context, index),
      },
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right:14.0),
                child: Column(
                  children: <Widget>[
                    Hero(
                      tag: 'lg',
                      child: CircleAvatar(
                        backgroundImage: ExactAssetImage(eventsList[index].logo),
                        radius: 30,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:16.0),
                    child: Row(
                      children: <Widget>[
                        Text(eventsList[index].title, style: new TextStyle(fontSize: 25.0)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:20.0),
                    child: Row(
                      children: <Widget>[
                        Text("by ${eventsList[index].organiser}", style: new TextStyle(fontSize: 14.0)),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Venue: ${eventsList[index].venue}", style: new TextStyle(fontSize: 14.0)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Date: ${DateFormat('EEEE, dd/MM/yy').format(eventsList[index].datetime)
                          .toString()}", style: new TextStyle(fontSize: 14.0)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Time: ${DateFormat('jm').format(eventsList[index].datetime)
                          .toString()}", style: new TextStyle(fontSize: 14.0)),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      MaterialButton(
                          child: Text("Register",style: new TextStyle(color: Colors.white)),
                          color: Color(0xFFE44C25),
                          elevation: 2,
                          onPressed: _launchURL
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Fees: ₹${eventsList[index].fees.toInt().toString()}",
                          style: new TextStyle(fontSize: 14.0)),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

}

