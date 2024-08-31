import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smarket/screens/StartScreen.dart';
import 'package:smarket/widget/LoginFIeld.dart';
import 'package:smarket/widget/LoginPass.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> SignUp = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 33),
            ),
            const Text(
              "create an account so you can order you",
              style: TextStyle(color: Colors.grey),
            ),
            const Text(
              "favorite products easily and quickly.",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
                key: SignUp,
                child: Column(
                  children: [
                    LoginField(
                      iconss: const Icon(Icons.person),
                      Email: "Username",
                      validator: (value) {
                        if (value!.isEmpty) return "can't be empty";
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    LoginField(
                      iconss: const Icon(Icons.email),
                      Email: "Email",
                      validator: (value) {
                        if (value!.isEmpty) return "can't be Empty";
                        if (!value.contains("@gmail.com"))
                          return "this is not type of email";
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Loginpass(),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 350,
                      height: 50,
                      child: MaterialButton(
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.orange),
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {
                            if (SignUp.currentState!.validate()) {
                              Timer(const Duration(seconds: 2), () {
                                const SnackBar(
                                  content: Text("Register done"),
                                );
                                const CircularProgressIndicator();
                              });
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StartScreen()));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                duration: Duration(seconds: 2),
                                content: Text("faild"),
                              ));
                            }
                          },
                          child: const Text(
                            "Register now",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
