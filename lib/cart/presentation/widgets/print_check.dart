import 'package:flutter/material.dart';

class PrintCheck extends StatelessWidget {
  const PrintCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const CircleAvatar(
        radius: 50,
        backgroundColor: Color(0xFFEDEDED),
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Color(0xFF34A853),
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }
}
