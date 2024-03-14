import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.productName});
  final String productName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(productName),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(children: [
            ListTile(
              leading: const Icon(Icons.verified_user_outlined),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
                side: const BorderSide(color: Colors.black, width: 1.0),
              ),
              title: Text(productName),
            )
          ]),
        ));
  }
}
