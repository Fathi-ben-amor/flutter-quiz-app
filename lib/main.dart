import 'package:flutter/material.dart';
import '../ListePage.dart';
import '../Menu.dart';
import '../AboutUs.dart';
import '../PrivacyPolicy.dart';
import '../TermsandConditions.dart';
import '../Settings.dart';
import '../SignIn.dart';
import '../ContactUs.dart';
import '../Profile.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[100],
        ),
        drawer: Drawer(
          child: Menu(),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/chi3ar.jpg'),
              ), //circleavatare
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 20.0,
                width: 300.0,
                child: Divider(
                  color: Colors.indigo[500],
                ), //divider
              ), //sizedbox
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Best Quiz',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.deepPurple[400],
                  fontWeight: FontWeight.bold,
                ), // textstyle
              ), //text
              Card(
                margin: EdgeInsets.only(top: 20.0),
                color: Colors.indigo[900],
                child: RaisedButton(
                  color: Colors.indigo[900],
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Let\'s play !',
                      style: TextStyle(
                        color: Colors.indigo[100],
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ), //style
                    ), //text
                  ), //padding
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return ListePage();
                      }), //material page route
                    ); //navigator
                  }, //onpressed
                ), //button
              ), //card
              SizedBox(
                height: 25.0,
              ),
              RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: Text(
                    'Sign In ?',
                    style: TextStyle(
                      color: Colors.indigo[500],
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                    ), //style
                  ), //text
                ), //padding
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return SignIn();
                    }), //material page route
                  ); //navigator
                }, //onpressed
              ), //button

              Container(
                width: double.infinity,
              ), //container
            ], //children
          ), //column
        ), //body
      ), //scaffold
    ); //materialapp
  }
}
