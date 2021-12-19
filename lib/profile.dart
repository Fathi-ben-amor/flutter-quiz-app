import 'package:flutter/material.dart';
import '../ChangePassword.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo[700],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ), //icon
          onPressed: () {
            Navigator.of(context).pop();
          },
        ), //leading
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ), //style
        ), //title
      ), //appbar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            SizedBox(
              height: 25.0,
            ),
            CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage('images/img1.jpg'),
            ), //circleavatare

            SizedBox(
              height: 25.0,
            ),
            Text(
              'Full Name',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey[700],
              ), // textstyle
            ), //text
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Foulen ',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ), // textstyle
            ), //text
            SizedBox(
              height: 35.0,
            ),
            Text(
              'User Name',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey[700],
              ), // textstyle
            ), //text
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Ben Feltan',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey[700],
              ), // textstyle
            ), //text
            SizedBox(
              height: 35.0,
            ),
            Text(
              'Email',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey[700],
              ), // textstyle
            ), //text
            SizedBox(
              height: 5.0,
            ),
            Text(
              'foulenbenfeltan@gmail.com',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey[700],
              ), // textstyle
            ), //text
            SizedBox(
              height: 35.0,
            ),
            Row(
              children: [
                Card(
                  margin: EdgeInsets.only(top: 30.0),
                  color: Colors.indigo[300],
                  child: RaisedButton(
                    color: Colors.indigo[300],
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Update Profile',
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
                SizedBox(
                  width: 35.0,
                ),
                Card(
                  margin: EdgeInsets.only(top: 30.0),
                  color: Colors.indigo[300],
                  child: RaisedButton(
                    color: Colors.indigo[300],
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'change Password',
                        style: TextStyle(
                          color: Colors.indigo[100],
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ), //style
                      ), //text
                    ), //padding
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return ChangePassword();
                        }), //material page route
                      ); //navigator
                    }, //onpressed
                  ), //button
                ), //card
              ],
            ),
          ], //children
        ), //column
      ), //body
    );
  }
}
