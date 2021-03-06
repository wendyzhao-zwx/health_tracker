import 'package:flutter/material.dart';

class BrowsePage extends StatefulWidget {
  BrowsePage({Key key}) : super(key: key);

  @override
  _BrowsePageState createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Browse'),
      ),
      body: ListView.builder(
          itemCount: 500,
          itemBuilder: (context, index) {
            return Card(
                color: index % 2 == 0 ? Colors.grey.shade600 : null,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Title of Blog ${index + 1}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: index % 2 == 0 ? Colors.white : null,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('some great and interesting text',
                        style: TextStyle(
                          color: index % 2 == 0 ? Colors.white : null,
                        ))
                  ]),
                ));
          }),
    );
  }
}
