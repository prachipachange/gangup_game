import 'package:flutter/material.dart';

import 'app_Color.dart' as colors;

typedef void OnTapOption(String text);

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.groupValue,
    required this.isCorrect,
    required this.onTapOption,
    required this.notSubmitted,
  }) : super(key: key);
  final String text;
  final String groupValue;
  final bool isCorrect;
  final bool notSubmitted;
  final OnTapOption onTapOption;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: RawMaterialButton(
        shape: StadiumBorder(),
        onPressed: () {
          onTapOption(text);
        },
        fillColor: groupValue == text
            ? isCorrect
                ? colors.AppColors().greenShade
                : colors.AppColors().redShade
            : notSubmitted
                ? colors.AppColors().greenShade
                : colors.AppColors().yellowShade.withOpacity(0.4),
        child: Text(text),
        textStyle: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
