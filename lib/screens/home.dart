import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        title: const Text("Home"),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
        ],
        elevation: 10.0,
        shadowColor: Colors.blue,
        titleSpacing: 10.0,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.0)),
        ),
      ),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Appbar",
            style: TextStyle(fontSize: 22),
          ),
          Text(
            "Coding with Umer",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
