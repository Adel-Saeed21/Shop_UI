import 'package:flutter/material.dart';
import 'package:smarket/data/Constant.dart';

import 'package:smarket/screens/ItemDetails.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.image,
    required this.itemName,
  });
  final String image;
  final String itemName;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Itemdetails(
                  imageproduct: "$image",
                  TextProduct: "$itemName",
                )));
      },
      child: Card(
        color: Constblack,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: constOrang),
            borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                child: Image.asset(
              "$image",
              height: 130,
            )),
            Text(
              "$itemName",
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.orange),
            ),
            const Text(
              "350\$",
              style:
                  TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    iconSize: 40,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.orange,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
