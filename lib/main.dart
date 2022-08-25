import 'package:flutter/material.dart';
import 'package:project_first/popup_screen.dart';

import 'circle_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: TapNewScreen(),
      // PlayGame(),
    );
  }
}

class TapNewScreen extends StatelessWidget {
  const TapNewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 40,
          width: 100,
          color: Colors.teal,
          child: MaterialButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => Dialog(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff340067),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              height: 40,
                              width: double.maxFinite,
                              color: Color(0xff011a51),
                              child: const Text(
                                "Pratap Statistics",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffFFC700),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Circle_widget(
                                    text: "Total score 24",
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Circle_widget(
                                  text: "Accuracy 18%",
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Circle_widget(
                                  text: "Rank 1st",
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Circle_widget(
                                  text: "Percentile 5%",
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Expanded(
                              child: VerticalBarLabelChart(
                                  VerticalBarLabelChart.createSampleData(),
                                  animate: false),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(top: 10, left: 5, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Circle_widget(text: "Total day of"),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Circle_widget(
                                    text: "No. of days",
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Circle_widget(
                                    text: "Consicuitive ",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )));
            },
            // shape: RoundedRectangleBorder(
            //     borderRadius: new BorderRadius.all(
            //   new Radius.circular(20.0),
            // )),
            child: const Text("Click here"),
          ),
        ),
      ),
    );
  }
}
