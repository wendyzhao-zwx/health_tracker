import 'package:flutter/material.dart';

class DailyActivity extends StatelessWidget {
  final List<String> titles = <String>[
    "  Water Drinked",
    "  Sodium Intake",
    "  Cigarettes",
    "  Alchohol",
    "  Screen Time",
  ];

  final List<String> date = <String>[
    "Mar 7, 2021",
    "Mar 7, 2021",
    "Mar 7, 2021",
    "Mar 7, 2021",
    "Mar 7, 2021",
  ];

  final List<String> content1 = <String>[
    "8",
    "2",
    "0",
    "Beer: 300",
    "11",
  ];

  final List<String> unit1 = <String>[
    " cups",
    " g",
    "",
    " mL",
    " hrs ",
  ];

  final List<String> content2 = <String>[
    "",
    "",
    "",
    "",
    "41",
  ];

  final List<String> unit2 = <String>[
    "",
    "",
    "",
    "",
    " min",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Daily Activity"),
      ),
      body: ListView.builder(
          itemCount: 5,
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
                                        child: Icon(Icons.emoji_people_rounded,
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
                                    text: content1[index],
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.green[900],
                                    ),
                                  ),
                                  TextSpan(
                                    text: unit1[index],
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: content2[index],
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.green[900],
                                    ),
                                  ),
                                  TextSpan(
                                    text: unit2[index],
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
