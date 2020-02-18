import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        title: Text('SIGN IN',style: TextStyle(letterSpacing: 1.0,fontWeight: FontWeight.w300)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
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
              padding: const EdgeInsets.only(top:16.0,bottom: 8.0),
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
            Padding(
              padding: const EdgeInsets.only(top:36.0,left:50.0,right:50.0),
              child: TextField(
                controller: usernameController,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'E-mail Address',
                    labelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic
                    ),
                    contentPadding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange)
                    ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 50.0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 8.0,right: 8.0),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrange)
                  ),
                  labelText: ('Password'),
                  labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontStyle: FontStyle.italic
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:150.0,right: 150.0),
              child: MaterialButton(
                child: Text('SIGN IN',style: TextStyle(color: Colors.white),),
                color: Colors.deepOrange,
                onPressed: (){
                  return showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        content: Text(usernameController.text+'\n'+passwordController.text  ),
                      );
                    },
                  );

                },
              ),
            )
          ],
        ),
      ),
    );
  }
}