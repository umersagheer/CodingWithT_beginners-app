import 'package:flutter/material.dart';

// ignore: constant_identifier_names
enum ProductTypeEnum { Downloadable, Deliverable }

// ignore: must_be_immutable
class MyRadioButton extends StatelessWidget {
  MyRadioButton({
    super.key,
    required this.selectedProductType,
    required this.onChanged,
    required this.title,
    required this.value,
  });

  String title;
  ProductTypeEnum value;
  ProductTypeEnum? selectedProductType;
  Function(ProductTypeEnum?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<ProductTypeEnum>(
          title: Text(title),
          value: value,
          groupValue: selectedProductType,
          contentPadding: const EdgeInsets.all(0.0),
          tileColor: Colors.deepPurple.shade50,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          onChanged: onChanged),
    );
  }
}
