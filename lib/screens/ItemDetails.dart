import 'package:flutter/material.dart';

class Itemdetails extends StatefulWidget {
  final String imageproduct;
  final String TextProduct;

  const Itemdetails(
      {super.key, required this.imageproduct, required this.TextProduct});

  @override
  State<Itemdetails> createState() => _ItemdetailsState();
}

String? country;

class _ItemdetailsState extends State<Itemdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.grey),
          title: const Text(
            "Details",
            style: TextStyle(color: Colors.orange),
          )),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Image.asset(
            "${widget.imageproduct}",
          ),
          Center(
            child: Text(
              "${widget.TextProduct}",
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
          ),
          const Center(
            child: Text(
              "350\$",
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Color :",
                style: TextStyle(color: Colors.orange),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.orange)),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text("Grey"),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text("black")
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            width: 40,
            child: MaterialButton(
              color: Colors.orange,
              onPressed: () {},
              child: const Text(
                "add to card",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
