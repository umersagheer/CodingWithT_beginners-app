import 'package:beginner_app/screens/details.dart';
import 'package:beginner_app/widgets/my_radio_button.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  _FormScreenState() {
    _selectedProductSize = _productSizesList[0];
  }

  final _productController = TextEditingController();
  final _productDesController = TextEditingController();
  bool? _checkboxList = false;

  ProductTypeEnum? _productTypeEnum;

  final _productSizesList = ["Small", "Medium", "Large", "Extra Large"];
  String? _selectedProductSize = "";
  @override
  void dispose() {
    super.dispose();
    _productController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Form',
          style: TextStyle(color: Colors.deepPurple.shade900),
        ),
        backgroundColor: Colors.deepPurple.shade200,
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
              style: TextStyle(fontSize: 15),
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
            CheckboxListTile(
              contentPadding: const EdgeInsets.all(0.0),
              title: const Text("Top Product"),
              value: _checkboxList,
              tileColor: Colors.deepPurple.shade50,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              onChanged: (bool? val) {
                setState(() {
                  _checkboxList = val;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                MyRadioButton(
                  selectedProductType: _productTypeEnum,
                  onChanged: (ProductTypeEnum? val) {
                    setState(() {
                      _productTypeEnum = val;
                    });
                  },
                  title: ProductTypeEnum.Downloadable.name,
                  value: ProductTypeEnum.Downloadable,
                ),
                const SizedBox(width: 20),
                MyRadioButton(
                  selectedProductType: _productTypeEnum,
                  onChanged: (ProductTypeEnum? val) {
                    setState(() {
                      _productTypeEnum = val;
                    });
                  },
                  title: ProductTypeEnum.Deliverable.name,
                  value: ProductTypeEnum.Deliverable,
                ),
              ],
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField(
              value: _selectedProductSize,
              icon: const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.deepPurple,
              ),
              dropdownColor: Colors.deepPurple.shade50,
              decoration: const InputDecoration(
                labelText: "Product Sizes",
                prefixIcon: Icon(Icons.accessibility_new_rounded,
                    color: Colors.deepPurple),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
              ),
              items: _productSizesList
                  .map((size) => DropdownMenuItem(
                        value: size,
                        child: Text(size),
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  _selectedProductSize = val as String;
                });
              },
            ),
            const SizedBox(height: 20),
            submitButton(context),
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
