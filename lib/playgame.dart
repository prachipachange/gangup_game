import 'package:flutter/material.dart';

import 'appbar.dart';
import 'option_group.dart';

class PlayGame extends StatefulWidget {
  const PlayGame({Key? key}) : super(key: key);

  @override
  State<PlayGame> createState() => _PlayGameState();
}

class _PlayGameState extends State<PlayGame> {
  bool submitted = false;
  String textOfBottom = 'submit';

  final _question = [
    {
      "questionText": "Q1. Flutter is Open Source UI created by ?",
      "answer": "Google",
      "a": "Apple",
      "b": "Google",
      "c": "microsoft",
      "d": "facebook",
    },
    {
      "questionText": "Q2. When Google release Flutter ?",
      "answer": "2017",
      "a": "2017",
      "b": "2018",
      "c": "2015",
      "d": "2016",
    },
    {
      "questionText": "Q3. Memory Location holds single letter no ?",
      "answer": "Word",
      "a": "Double",
      "b": "Int",
      "c": "Char",
      "d": "Word",
    },
    {
      "questionText": "Q4. Which programing language is used by Flutter ?",
      "answer": "Dart",
      "a": "Dart",
      "b": "Java",
      "c": "Python",
      "d": "C++",
    },
    {
      "questionText": "Q5. Who created Dart programing language?",
      "answer": "Jeremy Ashkenas",
      "a": "'Lars Lund",
      "b": "Brendan Eich",
      "c": "Bjarne Strou",
      "d": "Jeremy Ashk",
    },
    {
      "questionText": "Q6. What is Flutter ?",
      "answer": "And Dev Kit",
      "a": "IOS Dev Kit",
      "b": "Web Dev Kit",
      "c": "And Dev Kit",
      "d": "Mic kit",
    }
  ];

  var _questionIndex = 0;
  var score = 0;

  void _Question() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  // void _answerQuestion(int score) {
  //   _totalscore += score;
  //   setState(() {
  //
  //   });
  //   print(_questionIndex);
  //   if (_questionIndex < _questions.length) {
  //     print("we have more questions");
  //   } else {
  //     print
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    bool isLastQuestion = false == submitted;
    int score = 0;
    if (_questionIndex == _question.length - 1) {
      submitted = true;
    }

    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.maxFinite, 100),
          child: GameAppBar(),
        ),
        bottomNavigationBar: SizedBox(
          height: AppBar().preferredSize.height + 10,
          child: RawMaterialButton(
            fillColor: Color(0xFFf4d144),
            onPressed: () {
              setState(() {
                submitted ? submitted = false : submitted = true;
              });
              if (isLastQuestion) {
              } else {
                setState(() {
                  // var righAnswer = null;
                  _questionIndex++;
                });
              }
            },
            child: Text(submitted ? "Submit" : "Next Question",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
              Color(0xff050B18),
              Color(0xff2F0344),
              Color(0xff050B18)
            ]),
          ),
          child: Column(children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Color(0xFF340067),
                ),
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text.rich(
                            TextSpan(
                              text: "Q-1",
                              // textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          const Text.rich(
                            TextSpan(
                              text: "Score-0/10",
                              // textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.yellow, width: 4),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30))),
                            child: const CircleAvatar(
                              radius: 13,
                              // foregroundColor: Colors.yellow,
                              backgroundColor: Colors.transparent,
                              child: Text(
                                "10",
                                // textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ]),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      _question[_questionIndex]["questionText"].toString(),
                      // textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: OptionGroup(
                  isSubmitted: submitted,
                  result: (bool value) {},
                  a: _question[_questionIndex]["a"].toString(),
                  b: _question[_questionIndex]["b"].toString(),
                  c: _question[_questionIndex]["c"].toString(),
                  d: _question[_questionIndex]["d"].toString(),
                  rightAnswer: _question[_questionIndex]["answer"].toString(),
                ),
              ),
            ),
          ]),
        ));
  }
}

// class question_widget extends StatelessWidget {
//   const question_widget({
//     Key? key,
//     required this.sample_data,
//   }) : super(key: key);
//
//   final  sample_data;
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       sample_data[0]['question'],
//       // "The territory of Porus who offered strong radius resistance to Alexander was situated between the rivers of ",
//       textAlign: TextAlign.center,
//       style: TextStyle(
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//           fontSize: 17),
//       // _questionIndex < _questions.length
//       //     ? Quiz(
//       //   _questionIndex: _answerQuestion,
//       //   questionIndex: _questionIndex,
//       //   questions: _questions,
//       // )
//       //     : Result(_totalscore, _checkData),
//     );
//   }
// }
//
// final _questions = [
//   {
//     'questiontext': 'How many people are there ?',
//     'answer': [
//       {'answerText': 'four', 'score': -2},
//       {'answerText': 'five', 'score': -3},
//       {'answerText': 'three', 'score': -2},
//       {'answerText': 'one', 'score': -2},
//     ],
//   },
//   {
//     'questiontext': 'Whats the name of game ?',
//     'answer': [
//       {'answerText': 'bubble ball', 'score': false},
//       {'answerText': 'goal', 'score': false},
//       {'answerText': 'gangaup', 'score': true},
//     ],
//   },
//   {
//     'questiontext': 'How many players are there ?',
//     'answer': [
//       {'answerText': 'four', 'score': true},
//       {'answerText': 'five', 'score': false},
//       {'answerText': 'three', 'score': false},
//     ],
//   }
// ];

// class Quiz extends StatelessWidget {
//   final List<Map<String, Object>> prashan;
//   final int queIndex;
//   final Function ansQue;
//   final String questiontext;
//   final answer;
//   final String Quelist;
//   Quiz({
//     Key? key,
//     required this.prashan,
//     required this.queIndex,
//     required this.ansQue,
//     required this.questiontext,
//     this.answer,
//     required this.Quelist,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Quelist(
//           _questions[queIndex]['questionText'].toString(),
//         ),
//         ...(prashan[queIndex]['answer'] as List<Map<String, Object>>)
//             .map((prashan) {
//           return answer(
//               () => ansQue(prashan['score']), prashan['text'].toString());
//         }).toList()
//       ],
//     );
//   }
// }
//
// class Question {
//   // final String text;
//   final List<Question> answerList;
//   final String question;
//   // bool isLocked;
//   // Option? selectedOption;
//
//   Question(this.question, this.answerList
//       // this.text,
//       // this.answerList,
//       );
// }
// class Option {
//   final String text;
//   final bool iscorrect;
//   Option (this.text, this.iscorrect);
//
// class Answer {
//   final String answerText;
//   final bool isCorrect;
//   Answer(this.answerText, this.isCorrect);
// }
//
// List<Question> getQuestions() {
//   List<Question> list = [];
//   list.add(Question("Q1. Who created Flutter ?", [
//     Answer("Facebook", false),
//     Answer("Adobe", false),
//     Answer("Google", true),
//     Answer("Microsoft", false),
//   ]));
//
//   list.add(Question(
//       "The territory of Porus who offered strong radius resistance to Alexander was situated between the rivers of ",
//       [
//         Answer('A.Sutlej and Beas', true),
//         Answer('B.Jhlelum and Chenab', false),
//         Answer('C.Ravi and Chenab', false),
//         Answer('D.Ganga and yamuna', false),
//       ]));
//   list.add(Question("Q1. Who created Flutter ?", [
//     Answer("Facebook", false),
//     Answer("Adobe", false),
//     Answer("Google", true),
//     Answer("Microsoft", false),
//   ]));
//
//   list.add(Question("Who  created flutter ? ", [
//     Answer('A.Sutlej and Beas', true),
//     Answer('B.Jhlelum and Chenab', false),
//     Answer('C.Ravi and Chenab', false),
//     Answer('D.Ganga and yamuna', false),
//   ]));
//   return list;

// List<int> quesIds = [1, 2, 3, 4, 5];
// Map<int, String> ques = {
//   1: "question 1",
//   2: "question 2",
//   3: "question 3",
//   4: "question 4",
//   5: "question 5",
// };
// Map<int, String> times = {1: "30", 2: "20", 3: "60", 4: "40", 5: "30"};
// Map<int, Map<int, String>> ans = {
//   1: {1: "ans1-1", 2: "ans1-2", 3: "ans1-3"},
//   2: {4: "ans2-1", 5: "ans2-2", 6: "ans2-3"},
//   3: {7: "ans3-1", 8: "ans3-2", 9: "ans3-3"},
//   4: {10: "ans4-1", 11: "ans4-2", 12: "ans4-3"},
//   5: {13: "ans5-1", 14: "ans5-2", 15: "ans5-3"},
// };
// var currentQurstionIndex = 0;
// var rightAnswer = 0;
// late final String questiontext;
// late String _questions;
// void clickFunction() {
//   _questions;
// }
//
// var questionList;
// var currentQuestionIndex;
// QuestionController _questionController = (QuestionController());
