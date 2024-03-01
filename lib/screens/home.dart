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
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        title: const Text("Listview and builder Listview"),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
        ],
        elevation: 5.0,
        shadowColor: Colors.blue,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(3.0)),
        ),
      ),
      body: ListView.builder(
        itemExtent: 80.0,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(products[index][0])),
            title: Text(products[index]),
            subtitle: Text(productDetails[index]),
            trailing: Text(price[index].toString()),
          );
        },
      ),
    );
  }
}
