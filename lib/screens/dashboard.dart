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
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage('umer.jpg'),
              width: 300,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          Image(
            image: NetworkImage(
                'https://www.mooc.org/hs-fs/hubfs/learn-programming-career-jpg.jpeg?width=500&name=learn-programming-career-jpg.jpeg'),
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
