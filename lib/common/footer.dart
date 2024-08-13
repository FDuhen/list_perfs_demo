import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'footer',
      child: Image.asset(
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
        'assets/footer.jpg',
      ),
    );
  }
}
