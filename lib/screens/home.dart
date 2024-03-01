import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

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
      body: ListView(
        itemExtent: 70.0,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade400,
              child: const Icon(Icons.alarm_on_sharp),
            ),
            title: const Text('Sales'),
            subtitle: const Text('Sales of the week'),
            trailing: const Text('3500'),
            onTap: () {},
            tileColor: Colors.blue.shade50,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade400,
              child: const Icon(Icons.supervised_user_circle),
            ),
            title: const Text('Customers'),
            subtitle: const Text('Customers of the week'),
            trailing: const Text('1500'),
            onTap: () {},
            tileColor: Colors.blue.shade50,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade400,
              child: const Icon(Icons.add_chart_rounded),
            ),
            title: const Text('Profit'),
            subtitle: const Text('Profit of the week'),
            trailing: const Text('300'),
            onTap: () {},
            tileColor: Colors.blue.shade50,
          ),
        ],
      ),
    );
  }
}
