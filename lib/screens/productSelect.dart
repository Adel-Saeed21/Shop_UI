import 'package:flutter/material.dart';

class ProductSelect extends StatefulWidget {
  const ProductSelect({
    super.key,
  });

  @override
  State<ProductSelect> createState() => _ProductSelectState();
}

class _ProductSelectState extends State<ProductSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.shopping_bag_outlined),
          elevation: 0.0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.grey),
          title: const Text(
            "item selected",
            style: TextStyle(color: Colors.orange),
          )),
    );
  }
}
