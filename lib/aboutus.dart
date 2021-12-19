import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
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
            'About Us',
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
              Card(
                shadowColor: Colors.indigo[200],
                elevation: 8,
                margin: EdgeInsets.only(bottom: (15.0)),

                child: Container(
                  color: Colors.indigo[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 15.0,
                          backgroundImage: AssetImage('images/chi3ar.jpg'),
                        ), //leading
                        title: Text(
                          'Best Quiz',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.5,
                            fontWeight: FontWeight.bold,
                          ), //style
                        ), //text
                      ), //liste title
                      ListTile(
                        leading: CircleAvatar(
                          radius: 15.0,
                          child: Icon(
                            Icons.info_outline,
                            color: Colors.white,
                          ), //icon,
                        ), //leading
                        title: Text(
                          'Version',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.5,
                            fontWeight: FontWeight.bold,
                          ), //style
                        ), //text
                      ), //liste title
                    ], //children
                  ), //column
                ), //container
              ), //card
              Card(
                shadowColor: Colors.indigo[200],
                elevation: 8,
                margin: EdgeInsets.only(bottom: (15.0)),
                child: Container(
                  color: Colors.indigo[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: (13.0), top: (13.0), bottom: (3.5)),
                        child: Text(
                          'Info',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ), //style
                        ), //text
                      ), //container
                      SizedBox(
                        height: 20.0,
                        width: 300.0,
                        child: Divider(
                          color: Colors.indigo[200],
                        ), //divider
                      ), //sizedbox
                      ListTile(
                        leading: CircleAvatar(
                          radius: 15.0,
                          child: Icon(
                            Icons.account_balance,
                            color: Colors.white,
                          ), //icon,
                        ), //leading
                        title: Text(
                          'Author',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.5,
                            fontWeight: FontWeight.bold,
                          ), //style
                        ), //title
                        subtitle: Text(
                          'Arkay Apps',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.5,
                          ), //style
                        ), //subtitle
                      ), //liste title
                      ListTile(
                        leading: CircleAvatar(
                          radius: 15.0,
                          child: Icon(
                            Icons.email,
                            color: Colors.white,
                          ), //icon,
                        ), //leading
                        title: Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.5,
                            fontWeight: FontWeight.bold,
                          ), //style
                        ), //title
                        subtitle: Text(
                          'info@arkayapps.com',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13.5,
                          ), //style
                        ), //subtitle
                      ), //liste title
                      ListTile(
                        leading: CircleAvatar(
                          radius: 15.0,
                          child: Icon(
                            Icons.web,
                            color: Colors.white,
                          ), //icon,
                        ), //leading
                        title: Text(
                          'Website',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.5,
                            fontWeight: FontWeight.bold,
                          ), //style
                        ), //title
                        subtitle: Text(
                          'http://www.arkayapps.in',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13.5,
                          ), //style
                        ), //subtitle
                      ), //liste title
                      ListTile(
                        leading: CircleAvatar(
                          radius: 15.0,
                          child: Icon(
                            Icons.add_call,
                            color: Colors.white,
                          ), //icon,
                        ), //leading
                        title: Text(
                          'Contact Us',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.5,
                            fontWeight: FontWeight.bold,
                          ), //style
                        ), //title
                        subtitle: Text(
                          '+264 12345678',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13.5,
                          ), //style
                        ), //subtitle
                      ), //liste title
                    ], //children
                  ), //column
                ), //container
              ), //card
              Card(
                shadowColor: Colors.indigo[200],
                elevation: 8,
                margin: EdgeInsets.only(bottom: (15.0)),
                child: Container(
                  color: Colors.indigo[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: (13.0), top: (13.0), bottom: (3.5)),
                        child: Text(
                          'App Description',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ), //style
                        ), //text
                      ), //container
                      SizedBox(
                        height: 20.0,
                        width: 300.0,
                        child: Divider(
                          color: Colors.indigo[200],
                        ), //divider
                      ), //sizedbox

                      Container(
                        margin: EdgeInsets.only(
                            left: (17.0), top: (50.0), bottom: (13.5)),
                        child: Text(
                          'Play Quiz',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ), //style
                        ), //text
                      ), //container
                      Container(
                        margin: EdgeInsets.only(
                            left: (17.0), bottom: (10.0), right: (10.0)),
                        child: Text(
                          'is the android Material Desing quiz app used Firebase for Login of Google and Facebook and save user score. This app best for MCQ type questions like four options and one is true. Now you can make your own quiz app with user login and save not any worry about database storage.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ), //style
                        ), //text
                      ), //container
                    ], //children
                  ), //column
                ), //container
              ), //card
            ], //children
          ), //column
        ), //body
      ), //scaffold
    );
  }
}
