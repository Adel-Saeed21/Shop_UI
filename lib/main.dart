import 'package:flutter/material.dart';
import 'package:smarket/data/Constant.dart';
import 'package:smarket/screens/HomePage.dart';
import 'package:smarket/screens/LoginScreen.dart';
import 'package:smarket/screens/SignUp.dart';

import 'package:smarket/screens/StartScreen.dart';
import 'package:smarket/screens/controlScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "control": (context) => const Controlscreen(),
          "home": (context) => const HomePage(),
          "SignUp": (context) => const Signup()
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
            cardColor: Constblack,
            scaffoldBackgroundColor: Constblack),
        home: const StartScreen());
  }
}
/*Scaffold(
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: BottomNavigationBar(
                backgroundColor: Colors.grey[100],
                selectedItemColor: Colors.orange,
                currentIndex: index,
                iconSize: 40,
                selectedLabelStyle: const TextStyle(
                    color: Colors.white, decorationColor: Colors.white),
                onTap: (value) {
                  setState(() {
                    index = value;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: "."),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_bag_outlined), label: "."),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline), label: "."),
                ]),
          ),
          body: pagess[index],
        ));
        )*/