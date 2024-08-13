import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'header',
      child: Image.asset(
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
        'assets/banner.jpg',
      ),
    );
  }
}
