import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage('images/img4.jpg'),
            ), //circleavatare

            SizedBox(
              height: 20.0,
            ),
            TextField(
                decoration: InputDecoration(
                    hintText: "Your Name",
                    border: OutlineInputBorder(),
                    fillColor: Colors.grey[50],
                    filled: true), //inputDecorations
                obscureText: false), //textfield
            SizedBox(
              height: 7.0,
            ),
            TextField(
                decoration: InputDecoration(
                    hintText: "Your Email",
                    border: OutlineInputBorder(),
                    fillColor: Colors.grey[50],
                    filled: true), //inputDecorations
                obscureText: false), //textfield
            SizedBox(
              height: 7.0,
            ),
            TextField(
                decoration: InputDecoration(
                    hintText: "Your Password",
                    border: OutlineInputBorder(),
                    fillColor: Colors.grey[50],
                    filled: true), //inputDecorations
                obscureText: true), //textfield
            SizedBox(
              height: 25.0,
            ),
            Card(
              margin: EdgeInsets.only(top: 30.0),
              color: Colors.indigo[300],
              child: RaisedButton(
                color: Colors.indigo[300],
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.indigo[100],
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ), //style
                  ), //text
                ), //padding
                onPressed: () {
                  Navigator.of(context).pop();
                }, //onpressed
              ), //button
            ), //card
          ], //children
        ), //column
      ), //body
    );
  }
}
