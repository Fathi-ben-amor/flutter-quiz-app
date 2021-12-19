class Question {
  String questionText;
  String questionImage;
  String questionAnswer;
  String answer1;
  String answer2;
  String answer3;
  String answer4;

  Question(
      {String q,
      String i,
      String a,
      String f1,
      String f2,
      String f3,
      String f4}) {
    questionText = q;
    questionImage = i;
    questionAnswer = a;
    answer1 = f1;
    answer2 = f2;
    answer3 = f3;
    answer4 = f4;
  }
}
