import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smarket/widget/AccessWith.dart';
import 'package:smarket/widget/LoginFIeld.dart';
import 'package:smarket/widget/LoginPass.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  GlobalKey<FormState> formState = GlobalKey();
  bool show = true;
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
            "Welcome Back!",
            style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 33),
          ),
          const Text(
            "Sign in to your account.",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 20,
          ),
          Form(
              key: formState,
              child: Column(
                children: [
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
                  Row(
                    children: [
                      const SizedBox(
                        width: 210,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forget password?",
                            style: TextStyle(color: Colors.orange),
                          )),
                    ],
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
                          if (formState.currentState!.validate()) {
                            Timer(const Duration(seconds: 2), () {
                              const SnackBar(
                                content: Text("Login done"),
                              );
                              const CircularProgressIndicator();
                            });
                            Navigator.pushNamed(context, "control");
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              duration: Duration(seconds: 2),
                              content: Text("Login faild"),
                            ));
                          }
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "-------------------",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Or continue with",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "-------------------",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      AccessWith(
                        colorss: Colors.red,
                        icongruop: Icon(
                          Icons.g_mobiledata_outlined,
                          size: 33,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      AccessWith(
                          icongruop: Icon(
                            Icons.facebook_outlined,
                            color: Colors.white,
                            size: 33,
                          ),
                          colorss: Color.fromARGB(255, 0, 108, 197))
                    ],
                  )
                ],
              ))
        ],
      ),
    ));
  }
}
