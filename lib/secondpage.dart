import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page"),),
      body: Center(
        child: Container(
          // Button to go back to home page
          child: ElevatedButton(child: const Text("Back to Home"),onPressed: (){
            Navigator.pop(context);
          },),
        ),
      ),
    );
  }
}