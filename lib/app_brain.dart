import 'question.dart';

class AppBrain {
  int _questionNumber = 0;

  List<Question> _questionGroup = [
    Question(
      q: 'What is this animal\'s name?',
      i: 'images/img1.jpg',
      a: 'Cat',
      f1: 'Dog',
      f2: 'Mouse',
      f3: 'Bear',
      f4: 'Cat',
    ),
    Question(
      q: 'What is this animal\'s name?',
      i: 'images/img2.jpg',
      a: 'Deer',
      f1: 'Deer',
      f2: 'Sheep',
      f3: 'Pregnancy',
      f4: 'Goat',
    ),
    Question(
      q: 'What is this animal\'s name?',
      i: 'images/img3.jpg',
      a: 'Shark',
      f1: 'Whale',
      f2: 'Seal',
      f3: 'Shark',
      f4: 'Crocodile',
    ),
    Question(
      q: 'What is this animal\'s name?',
      i: 'images/img4.jpg',
      a: 'Rhinoceros',
      f1: 'Bear',
      f2: 'Rhinoceros',
      f3: 'Pig',
      f4: 'Deer',
    ),
    Question(
      q: 'What is this animal\'s name?',
      i: 'images/img5.jpg',
      a: 'Flamingo',
      f1: 'Bird',
      f2: 'Pigeon',
      f3: 'Flamingo',
      f4: 'Dove',
    ),
    Question(
      q: 'The fastest animal\'s in the world',
      i: 'images/img6.jpg',
      a: 'Leopard',
      f1: 'horse',
      f2: 'sheep',
      f3: 'Deer',
      f4: 'Leopard',
    ),
    Question(
      q: 'How many animals are in the picture',
      i: 'images/img7.jpg',
      a: '23',
      f1: '22',
      f2: '21',
      f3: '23',
      f4: '24',
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionGroup.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionGroup[_questionNumber].questionText;
  }

  String getQuestionImage() {
    return _questionGroup[_questionNumber].questionImage;
  }

  String getQuestionAnswer() {
    return _questionGroup[_questionNumber].questionAnswer;
  }

  String getAnswer1() {
    return _questionGroup[_questionNumber].answer1;
  }

  String getAnswer2() {
    return _questionGroup[_questionNumber].answer2;
  }

  String getAnswer3() {
    return _questionGroup[_questionNumber].answer3;
  }

  String getAnswer4() {
    return _questionGroup[_questionNumber].answer4;
  }

  bool isFinished() {
    if (_questionNumber >= _questionGroup.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
