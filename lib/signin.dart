import 'package:flutter/material.dart';
import '../SignUp.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            RaisedButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),

                child: Text(
                  'New User ?',
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
                    return SignUp();
                  }), //material page route
                ); //navigator
              }, //onpressed
            ), //button
            SizedBox(
              height: 25.0,
            ),
            CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage('images/chi3ar2.jpg'),
            ), //circleavatare

            SizedBox(
              height: 5.0,
            ),
            Text(
              'Best Quiz',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.deepPurple[400],
                fontWeight: FontWeight.bold,
              ), // textstyle
            ), //text
            SizedBox(
              height: 25.0,
            ),
            Row(
              children: [
                Text(
                  'Welcom to ',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ), // textstyle
                ), //text
                Text(
                  'Best Quiz',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ), // textstyle
                ), //text
              ], //children
            ), //row
            SizedBox(
              height: 30.0,
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
                    hintText: "Your Password",
                    border: OutlineInputBorder(),
                    fillColor: Colors.grey[50],
                    filled: true), //inputDecorations
                obscureText: true), //textfield
            Card(
              margin: EdgeInsets.only(top: 30.0),
              color: Colors.indigo[300],
              child: RaisedButton(
                color: Colors.indigo[300],
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Sign In',
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
