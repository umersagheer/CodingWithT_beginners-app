import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          constraints: const BoxConstraints.expand(
            height: 300,
            width: 300,
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                offset: const Offset(0, 10),
                spreadRadius: 3.0,
                blurRadius: 4.0,
              )
            ],
            image: const DecorationImage(
                image: AssetImage('umer.jpg'), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Stack(
            children: [
              Text(
                "Product card",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 25,
                child: Text(
                  "Learn Flutter",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              Positioned(
                bottom: 5,
                right: 0,
                child: Text(
                  "Ramadan Mubarak",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 45,
                child: Text(
                  "Codig with tea",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
