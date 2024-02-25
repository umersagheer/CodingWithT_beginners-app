import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        title: const Text("Rows and Columns"),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
        ],
        elevation: 5.0,
        shadowColor: Colors.blue,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.0)),
        ),
      ),
      body: Container(
        // color: Colors.blueAccent,
        // height: 400,
        child: const Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image(
                    image: AssetImage("umer.jpg"),
                    width: 170,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Image(
                    image: AssetImage("umer.jpg"),
                    width: 170,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Image(
                    image: AssetImage("umer.jpg"),
                    width: 170,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star_border),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Column(
                children: [
                  Icon(
                    Icons.phone,
                    size: 35.0,
                  ),
                  Text("Call")
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.alt_route,
                    size: 35.0,
                  ),
                  Text("Route")
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.travel_explore,
                    size: 35.0,
                  ),
                  Text("Explore")
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
