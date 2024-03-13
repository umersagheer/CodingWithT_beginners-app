import 'package:beginner_app/screens/details.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _productController = TextEditingController();

  @override
  void dispose() {
    _productController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              TextFormField(
                controller: _productController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Product Name',
                  prefixIcon: Icon(Icons.verified_user_outlined),
                ),
              ),
              const SizedBox(height: 20),
              submitButton(context)
            ],
          ),
        ));
  }

  OutlinedButton submitButton(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Details(
                productName: _productController.text,
              );
            },
          ),
        );
      },
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(200, 50),
      ),
      child: Text(
        "Submit Form".toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
