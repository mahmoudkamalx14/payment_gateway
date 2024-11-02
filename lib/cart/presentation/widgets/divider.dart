import 'package:flutter/material.dart';

class Div extends StatelessWidget {
  const Div({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 2,
      indent: 34,
      endIndent: 34,
      height: 34,
      color: Color(0xFFC6C6C6),
    );
  }
}
