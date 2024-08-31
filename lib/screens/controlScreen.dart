import 'package:flutter/material.dart';
import 'package:smarket/data/Constant.dart';
import 'package:smarket/screens/HomePage.dart';
import 'package:smarket/screens/productSelect.dart';
import 'package:smarket/screens/profileScreen.dart';

class Controlscreen extends StatefulWidget {
  const Controlscreen({super.key});

  @override
  State<Controlscreen> createState() => _ControlscreenState();
}

class _ControlscreenState extends State<Controlscreen> {
  List<Widget> pagess = [
    const HomePage(),
    const ProductSelect(),
    const Profilescreen(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constblack,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
            backgroundColor: Constblack,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey[100],
            unselectedLabelStyle: TextStyle(color: constOrang),
            currentIndex: index,
            iconSize: 40,
            selectedLabelStyle: const TextStyle(
                color: Colors.white, decorationColor: Colors.white),
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: "."),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined), label: "."),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: "."),
            ]),
      ),
      body: pagess[index],
    );
  }
}
