import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<IconData> icons = <IconData>[
    Icons.local_fire_department,
    Icons.emoji_people_rounded,
    Icons.sentiment_neutral_rounded,
    Icons.bedtime_rounded,
    Icons.local_fire_department,
  ];

  final List<String> titles = <String>[
    "  Exercise",
    "  Daily Activity",
    "  Conditions",
    "  Sleep",
    "  Exercise",
  ];

  final List<String> text1 = <String>[
    "Last workout: ",
    "Screen time: ",
    "You should: ",
    "",
    "",
  ];

  final List<String> text2 = <String>[
    "6",
    "Too Long",
    "Relax",
    "Lack of Sleep",
    "511",
  ];

  final List<String> text3 = <String>[
    " days ago",
    "",
    "",
    "",
    " steps",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Home"),
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
                            SizedBox(height: 15),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: text1[index],
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: text2[index],
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.green[900],
                                    ),
                                  ),
                                  TextSpan(
                                    text: text3[index],
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
