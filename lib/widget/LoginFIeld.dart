import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  const LoginField({
    super.key,
    this.validator,
    required this.Email,
    required this.iconss,
  });
  final String? Function(String?)? validator;
  final String Email;
  final Icon iconss;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.orange),
      keyboardType: TextInputType.emailAddress,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: iconss,
        labelStyle: const TextStyle(color: Colors.white),
        label: Text(
          Email,
          style: const TextStyle(color: Colors.orange),
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
