import 'package:flutter/material.dart';
import '../howtoplay.dart';
import 'PrivacyPolicy.dart';

class Settings extends StatelessWidget {
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
          'Settings',
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
            Container(
              margin: EdgeInsets.only(top: (7.0), bottom: (13.5)),
              child: Text(
                'Quiz Settings',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ), //style
              ), //text
            ), //container
            Card(
              margin: EdgeInsets.only(bottom: (15.0)),

              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.volume_down,
                        color: Colors.blue,
                      ), //leading
                      title: Text(
                        'Play Sound',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ), //style
                      ), //text
                    ), //liste title
                    ListTile(
                      leading: Icon(
                        Icons.play_disabled_outlined,
                        color: Colors.blue,
                      ), //leading
                      title: Text(
                        'Vibration Alert',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ), //style
                      ), //text
                    ), //liste title
                  ], //children
                ), //column
              ), //container
            ), //card
            Container(
              margin: EdgeInsets.only(bottom: (13.5)),
              child: Text(
                'More Settings',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ), //style
              ), //text
            ), //container
            Card(
              margin: EdgeInsets.only(bottom: (15.0)),

              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.share_rounded,
                        color: Colors.blue,
                      ), //leading
                      title: Text(
                        'Share app',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ), //style
                      ), //text
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ), //trailing
                    ), //liste title
                    ListTile(
                      leading: Icon(
                        Icons.star,
                        color: Colors.blue,
                      ), //leading
                      title: Text(
                        'Rate App',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ), //style
                      ), //text
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ), //trailing
                    ), //liste title
                    ListTile(
                      leading: Icon(
                        Icons.logout,
                        color: Colors.blue,
                      ), //leading
                      title: Text(
                        'Lagout',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ), //style
                      ), //text
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ), //trailing
                    ), //liste title
                  ], //children
                ), //column
              ), //container
            ), //card
          ], //children
        ), //column
      ), //body
    );
  }
}
