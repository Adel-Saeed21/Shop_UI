import 'package:flutter/material.dart';
import 'package:smarket/screens/LoginScreen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            child: Image.asset(
                "images/WhatsApp Image 2024-08-21 at 21.48.54_3ed482ed.jpg"),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 300,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.orange,
                      width: 2,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Loginscreen()));
                },
                child: const Text(
                  "Log In",
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                )),
          ),
          Container(
            width: 340,
            height: 75,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.pushNamed(context, "SignUp");
              },
              color: Colors.orange,
              child: const Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
