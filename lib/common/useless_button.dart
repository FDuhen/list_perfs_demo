import 'package:flutter/material.dart';

class UselessButton extends StatelessWidget {
  const UselessButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Do nothing
      },
      child: const Text('Useless Button'),
    );
  }
}
