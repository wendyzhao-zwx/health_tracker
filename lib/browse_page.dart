import 'package:flutter/material.dart';

class BrowsePage extends StatefulWidget {
  BrowsePage({Key key}) : super(key: key);

  @override
  _BrowsePageState createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
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
        title: Text('Browse'),
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
                                    child:
                                        Icon(icons[index]), //cardIcon(index)),
                                  ),
                                  TextSpan(
                                    text: titles[index], //cardTitle(index),
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // child: Text(
                            //   cardTitle(index),
                            //   //textAlign: TextAlign.center,
                            //   style: TextStyle(
                            //     fontSize: 25,
                            //     // fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                          ),
                        ),
                      ]),
                )));
          }),
      // body: Container(
      //   padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      //   height: 125,
      //   width: double.maxFinite,
      //   child: Card(
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(15.0),
      //       ),
      //       child: Padding(
      //         padding: const EdgeInsets.all(20.0),
      //         child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: <Widget>[
      //               Align(
      //                 alignment: Alignment.center,
      //                 child: Container(
      //                   child: Text(
      //                     "Should be left",
      //                     textAlign: TextAlign.center,
      //                     style: TextStyle(
      //                       fontSize: 25,
      //                       // fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(height: 10),
      //             ]),
      //       )),
      // ),
    );
  }
}
