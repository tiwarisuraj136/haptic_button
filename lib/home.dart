import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haptic_button/secondpage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //"space" used for space between widgets
  final space = const SizedBox(height: 55);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: const Text("Haptic Feedback"),
        backgroundColor: Colors.indigo,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Press button for touch impact",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                space,
                // Buttons wrapped in containers
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 12,
                  child: ElevatedButton(
                    child: const Text("Heavy Impact"),
                    onPressed: () {
                      HapticFeedback.heavyImpact();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage()));
                    },
                  ),
                ),
                space,
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 12,
                  child: ElevatedButton(
                    child: const Text("Light Impact"),
                    onPressed: () {
                      HapticFeedback.lightImpact();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage()));
                    },
                  ),
                ),
                space,
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 12,
                  child: ElevatedButton(
                    child: const Text("Medium Impact"),
                    onPressed: () {
                      HapticFeedback.mediumImpact();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage()));
                    },
                  ),
                ),
                space,
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 12,
                  child: ElevatedButton(
                    child: const Text("Vibrate "),
                    onPressed: () {
                      HapticFeedback.vibrate();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage()));
                    },
                  ),
                ),
                space,
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 12,
                  child: ElevatedButton(
                    child: const Text("selectionClick "),
                    onPressed: () {
                      HapticFeedback.vibrate();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
