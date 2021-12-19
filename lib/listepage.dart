import 'package:flutter/material.dart';
import '../gameanimal.dart';

class ListePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Best Quiz',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ), //style
        ), //title
      ), //appbar
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            newcardMethod(context, '1', 'Animals', ExamApp()),
            newcardMethod(context, '2', 'Transportations', ListePage()),
            newcardMethod(context, '3', 'Famous', ListePage()),
            newcardMethod(context, '4', 'Logo', ListePage()),
            newcardMethod(context, '5', 'Country', ListePage()),
            newcardMethod(context, '6', 'Milestones', ListePage()),
            Container(
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  Card newcardMethod(BuildContext context, String num, String game, link) {
    return Card(
      margin: EdgeInsets.only(top: (20.0), right: (20.0), left: (20.0)),
      child: RaisedButton(
        color: Colors.indigo[100],
        child: ListTile(
          leading: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.indigo[400],
            child: Text(num),
          ), //leading
          title: Text(
            game,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ), //style
          ), //text
        ), //liste title
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) {
              return (link);
            }),
          );
        },
      ),
    );
  }
}
