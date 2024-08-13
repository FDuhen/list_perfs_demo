import 'package:flutter/material.dart';
import 'dart:math';


class OpacityComponent extends StatelessWidget {
  const OpacityComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .8,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
    );;
  }
}
