import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: OutlinedButton
        // child: TextButton
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            elevation: 10,
            shadowColor: Colors.blue,
            side: BorderSide(
              color: Colors.blue.shade900,
              width: 2,
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10.0),
            fixedSize: const Size(230, 50),
            textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Continue   "), Icon(Icons.fork_right)],
          ),
          // label: const Text("Continue Button"),
          // icon: const Icon(Icons.plus_one),
        ),
      ),
    );
  }
}
