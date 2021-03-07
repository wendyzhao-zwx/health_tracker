import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  ExplorePage({Key key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final List<IconData> icons = <IconData>[
    Icons.local_fire_department,
    Icons.sentiment_neutral_rounded,
    Icons.emoji_people_rounded,
    Icons.bedtime_rounded,
  ];

  final List<String> titles = <String>[
    "  Exercise",
    "  Conditions",
    "  Daily Activity",
    "  Sleep",
  ];

  final List<String> content = <String>[
    "Did you know? Health officials suggest that healthy adults need at least 150 minutes of moderate aerobic activity or 75 minutes of vigorous aerobic activity a week, or a combination of moderate and vigorous activity. Long hours of sitting and lack of exercises lead to many cariovascular diseases",
    "Severe headaches, anxiety, fatigue, confusion, drowsiness, nausea, and difficult breathing may all be signs of high blood pressure. If you constantly show these symptioms, consider going to the doctor's and get a full body check",
    "Prevent diseases from coming to you by healthy living! An effective way of taking precautions is by living a healthy lifestyle. By exercising and keeping you weight within a healthy range, restricting sodium intake but ensuring calcium, potassium, and magnesium through healthy eating, your body gains a great ability to repair itself. In addition, you would do yourself a great favour by quiting smoking and keeping your daily alchohol level below the following amount: 24 oz (~700 mL) beer, or 8 oz (~240 mL) wine, or 2 oz (~60 mL) spirits",
    "Sleeping is very important. Lack of sleep not only results in loss of attention during the day, it is also very harmful for our organs. Human bodies repair themselves at night, and stopping them from doing so would reduce metabolism and cause toxin to be unable to be disposed. So why are you still staying up? For your face, you organs, you body, get enough sleep.",
  ];

  final List<String> text2 = <String>[
    "6",
    "Relax",
    "Lack of Sleep",
    "511",
  ];

  final List<String> text3 = <String>[
    " days ago",
    "",
    "",
    " steps",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Explore"),
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                            Text(
                              content[index],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ]),
                    )));
          }),
    );
  }
}
