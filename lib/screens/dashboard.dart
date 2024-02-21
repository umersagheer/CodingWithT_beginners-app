import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        title: Text(
          'Flutter App'.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: 200.0,
        height: 200.0,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 120, vertical: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(150.0)),
          // border: Border.all(color: Colors.blue, width: 4.0),
          image: const DecorationImage(image: AssetImage('umer.jpg')),
          boxShadow: [
            BoxShadow(
                color: Colors.blue.shade300,
                blurRadius: 5,
                spreadRadius: 1,
                offset: const Offset(1, 5)),
          ],
        ),
      ),
    );
  }
}
