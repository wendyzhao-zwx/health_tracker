import 'package:flutter/material.dart';

class HealthData extends StatelessWidget {
  // final List<String> titles = <String>[
  //   "  Daily Activity",
  //   "  Exercise",
  //   "  Body Measurements",
  //   "  Body Condition",
  //   "  Health Data",
  //   "  Sleep",
  //   "  Period",
  // ];

  // final List<String> date = <String>[
  //   "Mar 7, 2021",
  //   "Mar 7, 2021",
  //   "Mar 7, 2021",
  //   "Mar 7, 2021",
  //   "Mar 7, 2021",
  //   "Mar 7, 2021",
  //   "Mar 7, 2021",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Health Data"),
      ),
      body: ListView.builder(
          itemCount: 1,
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
                                        child: Icon(Icons.insert_chart,
                                            size: 20, color: Colors.green[900]),
                                      ),
                                      TextSpan(
                                        text: '  Blood Pressure',
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
                                'Mar 7, 2021', //date[index],
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
                                    text: '120 ',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'mm Hg',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.green[900],
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
