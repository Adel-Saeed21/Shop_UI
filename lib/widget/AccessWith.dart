import 'package:flutter/material.dart';

class AccessWith extends StatelessWidget {
  const AccessWith({
    super.key,
    required this.icongruop,
    required this.colorss,
  });
  final Icon icongruop;
  final Color colorss;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: colorss, borderRadius: BorderRadius.circular(15)),
        width: 140,
        child: IconButton(onPressed: () {}, icon: icongruop));
  }
}
