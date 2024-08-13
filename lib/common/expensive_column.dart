import 'package:flutter/material.dart';

class ExpensiveColumn extends StatelessWidget {
  const ExpensiveColumn({super.key});

  @override
  Widget build(BuildContext context) {
    final list = List.generate(100, (index) => 'test');

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IntrinsicHeight(
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 75,
                child: Text(
                  list.join(' '),
                  maxLines: null,
                  overflow: TextOverflow.visible,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: const Center(
                      child: Text('Fit container through IntrinsicHeight')),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
