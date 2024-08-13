import 'package:flutter/material.dart';

class ExpensiveRow extends StatelessWidget {
  const ExpensiveRow({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          const Spacer(),
          IconButton(
            icon: const Text(
              "Text",
            ),
            onPressed: () {},
          ),
          const VerticalDivider(
          ),
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
