import 'package:flutter/material.dart';

import 'package:smarket/data/Constant.dart';
import 'package:smarket/screens/Contact.dart';
import 'package:smarket/screens/StartScreen.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Drawer(
          child: ListView(
            children: [
              Card(
                color: Colors.orange,
                child: ListTile(
                  title: const Text(
                    "Last transection",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: const Icon(Icons.attach_money),
                  onTap: () {},
                ),
              ),
              Card(
                color: Colors.orange,
                child: ListTile(
                  title: const Text(
                    "about us",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: const Icon(Icons.help),
                  onTap: () {},
                ),
              ),
              Card(
                color: Colors.orange,
                child: ListTile(
                  title: const Text(
                    "contact Us",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: const Icon(Icons.phone_android),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Contact()));
                  },
                ),
              ),
              Card(
                color: Colors.orange,
                child: ListTile(
                  title: const Text(
                    "sign out",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: const Icon(Icons.exit_to_app),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const StartScreen()));
                  },
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
            leading: const Icon(Icons.person_rounded),
            elevation: 0.0,
            centerTitle: true,
            iconTheme: const IconThemeData(color: Colors.grey),
            title: Text(
              "Profile",
              style: TextStyle(color: constOrang, fontWeight: FontWeight.bold),
            )));
  }
}
