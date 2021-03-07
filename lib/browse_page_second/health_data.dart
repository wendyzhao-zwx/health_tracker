import 'package:flutter/material.dart';

class HealthData extends StatelessWidget {
  final List<String> titles = <String>[
    "  Daily Activity",
    "  Exercise",
    "  Body Measurements",
    "  Body Condition",
    "  Health Data",
    "  Sleep",
    "  Period",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Health Data"),
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
                                  //   WidgetSpan(
                                  //     child:
                                  //         Icon(icons[index]),
                                  //   ),
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
