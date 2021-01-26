import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class _MyAppState extends State<MyApp> {
  final value = 1;

  int counter = 0;
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
            Column(
              children: [
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: Container(
                          color: Colors.amberAccent,
                          child: Center(child: Text("Height, width = 50 ,200")),
                        ),
                      ),
                    ),
                    Text("This is a sized box")
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Container(
                          height: 200,
                          width: 100,
                          color: Colors.amberAccent,
                          child: Center(child: Text("Mobile dev")),
                        ),
                      ),
                    ),
                    Text("This is a rotated box")
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        color: Colors.amberAccent,
                        height: 50,
                        width: 200,
                        child: Chip(
                          label: Text("Chip widget on flutter"),
                          avatar: CircleAvatar(
                            child: Icon(Icons.device_hub),
                          ),
                        ),
                      ),
                    ),
                    Text("This is a chip widget")
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          counter++;
                        },
                        elevation: 5,
                        tooltip: "Floating Action button",
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text("This button has been pressed $counter times")
                  ],
                ),
              ],
            ),
            Row(
              children: [
                PopupMenuButton<WhyFarther>(
                  onSelected: (WhyFarther result) {
                    setState(() {
                      var _selection = result;
                    });
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<WhyFarther>>[
                    const PopupMenuItem<WhyFarther>(
                      value: WhyFarther.harder,
                      child: Text('Working a lot harder'),
                    ),
                    const PopupMenuItem<WhyFarther>(
                      value: WhyFarther.smarter,
                      child: Text('Being a lot smarter'),
                    ),
                    const PopupMenuItem<WhyFarther>(
                      value: WhyFarther.selfStarter,
                      child: Text('Being a self-starter'),
                    ),
                    const PopupMenuItem<WhyFarther>(
                      value: WhyFarther.tradingCharter,
                      child: Text('Placed in charge of trading charter'),
                    ),
                  ],
                ),
                Text("This is a pop up menu")
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          shape: CircularNotchedRectangle(),
          notchMargin: 4.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                color: Colors.white,
                size: 40,
              ),
              Icon(Icons.camera, color: Colors.white, size: 40),
              Icon(Icons.edit, color: Colors.white, size: 40),
              Icon(Icons.notification_important_rounded,
                  color: Colors.white, size: 40),
              Icon(Icons.person, color: Colors.white, size: 40),
            ],
          ),
        ),
      ),
    );
  }

  void bottomAppBarContents() {}
}
