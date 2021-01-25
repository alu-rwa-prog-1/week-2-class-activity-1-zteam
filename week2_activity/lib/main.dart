import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final value = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.menu)],
          backgroundColor: Colors.blue[900],
          title: Text(
            "Flutter Ecosystem Updates",
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              children: List<Widget>.generate(3, (int index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ChoiceChip(
                    label: Text(
                      "Week $index",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    selected: value == index,
                  ),
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 200),
                    child: Image.asset("images/mtn.jpg")),
                Column(
                  children: [
                    Text(
                      "MTN Rwanda Hackathon",
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "Ideas welcome for mobile solutions\n using the MTN MoMo API",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
