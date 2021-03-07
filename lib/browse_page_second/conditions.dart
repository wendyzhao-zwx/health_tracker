import 'package:flutter/material.dart';

class Conditions extends StatelessWidget {
  final List<IconData> icons = <IconData>[
    Icons.sentiment_satisfied_rounded,
    Icons.sentiment_satisfied_rounded,
    Icons.sentiment_satisfied_rounded,
    Icons.sentiment_neutral_rounded,
    Icons.sentiment_satisfied_rounded,
    Icons.sentiment_dissatisfied_rounded,
    Icons.sentiment_dissatisfied_rounded,
    Icons.sentiment_satisfied_rounded,
  ];

  final List<String> titles = <String>[
    "  Headache",
    "  Anxiety",
    "  Mental Stress",
    "  Fatigue",
    "  Confusion",
    "  Drowsiness",
    "  Nausea",
    "  Short of Breath",
  ];

  final List<String> date = <String>[
    "Mar 7, 2021",
    "Mar 7, 2021",
    "Mar 7, 2021",
    "Mar 7, 2021",
    "Mar 7, 2021",
    "Mar 7, 2021",
    "Mar 7, 2021",
    "Mar 7, 2021",
  ];

  final List<String> number1 = <String>[
    "",
    "",
    "0       1       ",
    "0      1       2       ",
    "",
    "0      1       2       3       ",
    "",
    "",
  ];

  final List<String> number2 = <String>[
    "0",
    "0",
    "2",
    "3",
    "0",
    "4",
    "0",
    "0",
  ];

  final List<String> number3 = <String>[
    "       1       2       3       4",
    "       1       2       3       4",
    "       3       4",
    "       4",
    "       1       2       3       4",
    "",
    "       1       2       3       4",
    "       1       2       3       4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Conditions"),
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 150,
                width: double.maxFinite,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 32.0,
                        top: 16.0,
                        right: 32.0,
                        bottom: 16.0,
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(icons[index],
                                            size: 20, color: Colors.green[900]),
                                      ),
                                      TextSpan(
                                        text: titles[index],
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.green[900],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                date[index],
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.green[900],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: number1[index],
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: number2[index],
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.green[900],
                                    ),
                                  ),
                                  TextSpan(
                                    text: number3[index],
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    )));
          }),
    );
  }
}
