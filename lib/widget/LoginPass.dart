import 'package:flutter/material.dart';

class Loginpass extends StatefulWidget {
  const Loginpass({
    super.key,
  });

  @override
  State<Loginpass> createState() => _LoginpassState();
}

class _LoginpassState extends State<Loginpass> {
  bool show = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.orange),
      validator: (value) {
        if (value!.isEmpty) return "this field can't be Empty";
        if (value.length < 8) return "password is short";
      },
      obscureText: show,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: IconButton(
            onPressed: () {
              show = !show;
              setState(() {});
            },
            icon: const Icon(Icons.visibility)),
        labelStyle: const TextStyle(color: Colors.white),
        label: const Text(
          "Password",
          style: TextStyle(color: Colors.orange),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.orange)),
      ),
    );
  }
}
