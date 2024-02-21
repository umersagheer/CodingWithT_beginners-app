import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: Center(
        child: IconButton(
          icon: const FaIcon(FontAwesomeIcons.react),
          iconSize: 100,
          color: Colors.blueGrey,
          onPressed: () {},
          highlightColor: Colors.blue.withOpacity(0.1),
        ),
      ),
    );
  }
}
