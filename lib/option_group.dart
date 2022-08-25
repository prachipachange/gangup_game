import 'package:flutter/material.dart';

import 'buttonwidget.dart';

typedef Result(bool value);

class OptionGroup extends StatefulWidget {
  const OptionGroup({
    Key? key,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.isSubmitted,
    required this.rightAnswer,
    required this.result,
  }) : super(key: key);
  // final String text;
  final String a;
  final String b;
  final String c;
  final String d;
  final bool isSubmitted;
  final String rightAnswer;
  final Result result;

  @override
  State<OptionGroup> createState() => _OptionGroupState();
}

class _OptionGroupState extends State<OptionGroup> {
  bool CheckResult(text) {
    return widget.rightAnswer == text ? true : false;
  }

  void reloadUI() {
    setState(() {});
  }

  late String groupID;
  @override
  void initState() {
    super.initState();
    groupID = " ";
  }

  bool a = false, b = false, c = false, d = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Expanded(
          flex: 1,
          child: ButtonWidget(
            text: widget.a,
            isCorrect: CheckResult(widget.a),
            onTapOption: (String text) {
              setState(() {
                groupID = text;
                widget.result(CheckResult(text));
              });
            },
            notSubmitted: false,
            groupValue: groupID,
          ),
        ),
        Expanded(
          flex: 1,
          child: ButtonWidget(
            text: widget.b,
            isCorrect: CheckResult(widget.b),
            onTapOption: (String text) {
              setState(() {
                groupID = text;
                widget.result(CheckResult(text));
              });
            },
            notSubmitted: false,
            groupValue: groupID,
          ),
        ),
      ]),
      Row(children: [
        Expanded(
          flex: 1,
          child: ButtonWidget(
            text: widget.c,
            isCorrect: CheckResult(widget.c),
            onTapOption: (String text) {
              setState(() {
                groupID = text;
                widget.result(CheckResult(text));
              });
            },
            notSubmitted: false,
            groupValue: groupID,
          ),
        ),
        Expanded(
          flex: 1,
          child: ButtonWidget(
            text: widget.d,
            isCorrect: CheckResult(widget.d),
            onTapOption: (String text) {
              setState(() {
                groupID = text;
                widget.result(CheckResult(text));
              });
            },
            notSubmitted: false,
            groupValue: groupID,
          ),
        ),
      ]),
    ]);
  }
}

// const ButtonWidget({
// Key? key,
// required this.text,
// required this.a,
// required this.b,
// required this.c,
// required this.d,
// required this.isSubmitted,
// required this.rightAnswer,
// this.result,
// }) : super(key: key);

//
// @override
// State<ButtonWidget> createState() => _ButtonWidgetState();
// }
//
// class _ButtonWidgetState extends State<ButtonWidget> {
//   bool  checkResult(text){
//     return widget.rightAnswer == text ? true : false;
//   }
//   void reloadUI() {
//     setState((){});
//   }
//   late String groupID;
//   @override
//   void initState() {
//     super.initState();
//     groupID= '';
//   }
//   bool a = false, b= false, c= false, d= false;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         children: [
//         Row(
//         children: [
//         Expanded(flex: 1,
//         child: OptionButton(
//         text: widget.a,
//         isCorrect: CheckResult(widget.a)
//     ),
