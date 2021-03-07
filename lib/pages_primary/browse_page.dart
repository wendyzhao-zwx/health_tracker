import 'package:flutter/material.dart';
import 'package:health_tracker/browse_page_second/body_measurements.dart';
import 'package:health_tracker/browse_page_second/conditions.dart';
import 'package:health_tracker/browse_page_second/daily_activity.dart';
import 'package:health_tracker/browse_page_second/exercise.dart';
import 'package:health_tracker/browse_page_second/health_data.dart';
import 'package:health_tracker/browse_page_second/period.dart';
import 'package:health_tracker/browse_page_second/sleep.dart';

class BrowsePage extends StatefulWidget {
  BrowsePage({Key key}) : super(key: key);

  @override
  _BrowsePageState createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  final List<String> titles = <String>[
    "  Daily Activity  ",
    "  Exercise  ",
    "  Body Measurements  ",
    "  Conditions  ",
    "  Health Data  ",
    "  Sleep  ",
    "  Period  ",
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

  final List<Widget> browse = <Widget>[
    DailyActivity(),
    Excercise(),
    BodyMeasurements(),
    Conditions(),
    HealthData(),
    Sleep(),
    Period()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Browse'),
      ),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 100,
                width: double.maxFinite,
                child: InkWell(
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
                                    WidgetSpan(
                                      child: Icon(Icons
                                          .keyboard_arrow_right_rounded), //cardIcon(index)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]),
                  )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => browse[index]),
                    );
                  },
                ));
          }),
    );
  }
}
