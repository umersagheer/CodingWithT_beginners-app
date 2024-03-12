import "package:flutter/material.dart";

class Home extends StatelessWidget {
  Home({super.key});

  List<String> products = ['Bed', 'Sofa', "Chair"];
  List<String> productDetails = [
    'King Size Bed',
    'King Size Sofa',
    "Wooden Chair"
  ];
  List<int> price = [30000, 22222, 4000];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        // elevation: 10.0,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomAppBar(
        notchMargin: 10.0,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home),
                  Text("Home"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Icon(Icons.image),
                  Text("Gallery"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Icon(Icons.favorite),
                  Text("Likes"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Icon(Icons.person),
                  Text("Profile"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
