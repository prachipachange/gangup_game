import 'package:flutter/material.dart';

class GameAppBar extends StatelessWidget {
  const GameAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 3,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          height: 100,
          decoration: const BoxDecoration(
            color: Color(0xFF340067),
          ),
          child: Expanded(
            flex: 2,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(
                        Icons.power_settings_new,
                        color: Colors.blue,
                        size: 26,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Event-Day 1',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 25,
                            color: Color(0xFFf4d144),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
