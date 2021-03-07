import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> titles = <String>[
    "  Daily Activity",
    "  Exercise",
    "  Body Measurements",
    "  Body Condition",
    "  Health Data",
    "  Sleep",
    "  Period",
  ];

  final List<IconData> icons = <IconData>[
    Icons.emoji_people_rounded,
    Icons.local_fire_department,
    Icons.accessibility,
    Icons.sentiment_neutral_rounded,
    Icons.insert_chart,
    Icons.bedtime_rounded,
    Icons.invert_colors_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 100,
                width: double.maxFinite,
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.only(
                    left: 32.0,
                    top: 16.0,
                    right: 16.0,
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
                                    child: Icon(icons[index]),
                                  ),
                                  TextSpan(
                                    text: titles[index],
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                )));
          }),
    );
  }
}
