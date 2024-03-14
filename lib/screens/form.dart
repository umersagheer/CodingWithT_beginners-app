import 'package:beginner_app/screens/details.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _productController = TextEditingController();
  final _productDesController = TextEditingController();
  bool? _checkboxList = false;

  @override
  void dispose() {
    super.dispose();
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
            const Text(
              "Product",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Product Description",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            ProductField(
              productController: _productController,
              text: "Product Name",
              icon: Icons.verified_user_outlined,
              iconColor: Colors.black,
            ),
            const SizedBox(height: 20),
            ProductField(
              productController: _productDesController,
              text: "Product Description",
              icon: Icons.description_outlined,
              iconColor: Colors.black,
            ),
            const SizedBox(height: 20),
            // Checkbox(
            //     checkColor: Colors.white,
            //     tristate: true,
            //     value: _checkbox,
            //     onChanged: (val) {
            //       setState(() {
            //         _checkbox = val;
            //       });
            //     }),
            CheckboxListTile(
              title: const Text("Top Product"),
              value: _checkboxList,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (val) {
                setState(() {
                  _checkboxList = val;
                });
              },
            ),
            const SizedBox(height: 20),
            submitButton(context)
          ],
        ),
      ),
    );
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

class ProductField extends StatelessWidget {
  const ProductField(
      {super.key,
      required TextEditingController productController,
      required this.text,
      required this.icon,
      required this.iconColor})
      : _productController = productController;

  final TextEditingController _productController;
  final String text;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _productController,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: text,
        prefixIcon: Icon(icon),
        prefixIconColor: iconColor,
      ),
    );
  }
}
