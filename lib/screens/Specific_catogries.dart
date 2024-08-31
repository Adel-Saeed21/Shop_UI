import 'package:flutter/material.dart';

import 'package:smarket/widget/ItemCard.dart';

class SpecificCatogries extends StatelessWidget {
  const SpecificCatogries(
      {super.key, required this.lists, required this.titel});

  final List lists;
  final String titel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.grey),
          title: Row(children: [
            const SizedBox(
              width: 50,
            ),
            const Icon(Icons.shop_outlined),
            const Text(
              " Shop",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              " $titel",
              style: const TextStyle(color: Colors.orange),
            ),
          ]),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisExtent: 240),
          itemBuilder: (context, i) {
            return ItemCard(image: lists[i].image, itemName: lists[i].itemName);
          },
          itemCount: lists.length,
        ));
  }
}
