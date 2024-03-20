import 'package:beginner_app/models/product_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  Details({super.key, required this.productDetails});
  ProductDetails productDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(productDetails.productName),
          backgroundColor: Colors.deepPurple.shade200,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: ListView(children: [
            ListTile(
              leading:
                  const Icon(Icons.shopping_bag_outlined, color: Colors.purple),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
                side: const BorderSide(color: Colors.deepPurple, width: 1.0),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  productDetails.isTopProduct
                      ? const Chip(
                          label: Text("Top Product"),
                          backgroundColor: Colors.deepPurple,
                          labelStyle: TextStyle(color: Colors.white),
                        )
                      : const Text(""),
                  Text(
                    productDetails.productName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22.0),
                  ),
                  Text(
                    productDetails.productDescription,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12.0),
                  ),
                  Row(
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.purple),
                        onPressed: () {},
                        child: Text(
                          productDetails.productType.name,
                          style: const TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.purple),
                        onPressed: () {},
                        child: Text(
                          productDetails.productSize,
                          style: const TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
