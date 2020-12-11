import 'package:flutter/cupertino.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({@required this.title, @required this.answers});
}

class QuestionData {
  final _data = [
    Question(title: 'Кем хочешь стать?', answers: [
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!', 'isCorrec': 1},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
    ]),
    Question(title: 'Кем хочешь стать?', answers: [
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!', 'isCorrec': 1},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
    ]),
    Question(title: 'Кем хочешь стать?', answers: [
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!', 'isCorrec': 1},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
    ]),
    Question(title: 'Кем хочешь стать?', answers: [
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!', 'isCorrec': 1},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
    ]),
    Question(title: 'Кем хочешь стать?', answers: [
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!', 'isCorrec': 1},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
    ]),
    Question(title: 'Кем хочешь стать?', answers: [
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!', 'isCorrec': 1},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
    ]),
    Question(title: 'Кем хочешь стать?', answers: [
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!', 'isCorrec': 1},
      {'answers': 'Ведущий "Орел и Решка". Хочу повидать мир!'},
    ])
  ];
  List<Question> get question => [..._data];
}
