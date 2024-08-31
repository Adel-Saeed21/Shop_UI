import 'package:flutter/material.dart';
import 'package:smarket/screens/Specific_catogries.dart';

class CatogoriesItem extends StatelessWidget {
  const CatogoriesItem({
    super.key,
    required this.photo,
    required this.text,
    required this.does,
    required this.title,
  });
  final String photo;
  final String text;
  final String title;
  final List does;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          /*  height: 60,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),*/
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SpecificCatogries(
                      lists: does,
                      titel: "$title",
                    )));
          },
          child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                "$photo",
                fit: BoxFit.cover,
                height: 60,
                width: 60,
              )),
        ),
        Text(
          "$text",
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange),
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}
