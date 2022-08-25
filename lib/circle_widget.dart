import 'package:flutter/material.dart';

class Circle_widget extends StatelessWidget {
  const Circle_widget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.yellow, width: 4),
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: CircleAvatar(
        radius: 27,
        // foregroundColor: Colors.yellow,
        backgroundColor: const Color(0xff0337ad),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.normal, color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}
