import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Card(
          child: Row(
            children: [
              Image.asset(
                'assets/banner.jpg',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 8),
              Text('Item $index'),
            ],
          ),
        );
      },
    );
  }
}
