import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter App'.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
      ),
      body: const Center(
        child: Text.rich(
          TextSpan(
            text: "My",
            style: TextStyle(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: 'Flutter',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
              TextSpan(
                text: 'App',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
