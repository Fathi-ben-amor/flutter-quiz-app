import 'package:flutter/material.dart';
import 'app_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

AppBrain appBrain = AppBrain();

class ExamApp extends StatelessWidget {
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
            'Best Quiz',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ), //style
          ), //title
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ExamPage(),
        ),
      ),
    );
  }
}

class ExamPage extends StatefulWidget {
  @override
  _ExamPageState createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  int falseAnswers = 0;
  int rightAnswers = 0;

  void checkAnswer(String whatUserPicked) {
    String correctAnswer = appBrain.getQuestionAnswer();
    setState(() {
      if (whatUserPicked == correctAnswer) {
        rightAnswers++;
        splashColor:
        Colors.green;
      } else {
        falseAnswers++;
        splashColor:
        Colors.red;
      }

      if (appBrain.isFinished() == true) {
        Alert(
          context: context,
          title: "GameAnimal is finished ",
          desc: " $rightAnswers right answers and $falseAnswers false answers",
          buttons: [
            DialogButton(
              child: Text(
                "play again",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();

        appBrain.reset();
        falseAnswers = 0;
        rightAnswers = 0;
      } else {
        appBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: (2.0), bottom: (2.0), right: (25.0), left: (25.0)),
          child: Card(
            color: Colors.indigo[50],
            margin: EdgeInsets.only(bottom: (8.0), right: (25.0), left: (25.0)),

            child: ListTile(
              leading: Text(
                '$rightAnswers',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ), //textstyle
              ), //leading
              trailing: Text(
                '$falseAnswers',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ), //textstyle
              ), //trailing
            ), //listetitle
          ),
        ), //card
        Expanded(
          flex: 4,
          child: Column(
            children: [
              SizedBox(
                child: Image.asset(appBrain.getQuestionImage()),
                height: 200.0,
                width: 500.0,
              ),
              Text(
                appBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: FlatButton(
              color: Colors.indigo[100],
              child: Text(
                appBrain.getAnswer1(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                checkAnswer(appBrain.getAnswer1());
              },
            ),
          ),
        ), // ex 1
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: FlatButton(
              color: Colors.indigo[100],
              child: Text(
                appBrain.getAnswer2(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                checkAnswer(appBrain.getAnswer2());
              },
            ),
          ),
        ), // expanded 2
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: FlatButton(
              color: Colors.indigo[100],
              child: Text(
                appBrain.getAnswer3(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                checkAnswer(appBrain.getAnswer3());
              },
            ),
          ),
        ), // ex 3
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: FlatButton(
              color: Colors.indigo[100],
              child: Text(
                appBrain.getAnswer4(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                checkAnswer(appBrain.getAnswer4());
              },
            ),
          ),
        ), // ex 4
      ],
    );
  }
}
