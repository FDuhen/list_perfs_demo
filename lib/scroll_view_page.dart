import 'package:flutter/material.dart';
import 'package:list_perfs_demo/common/card_list.dart';
import 'package:list_perfs_demo/common/expensive_column.dart';
import 'package:list_perfs_demo/common/footer.dart';
import 'package:list_perfs_demo/common/header.dart';
import 'package:list_perfs_demo/common/opacity_component.dart';
import 'package:list_perfs_demo/common/useless_button.dart';

import 'common/expensive_row.dart';

class ScrollViewPage extends StatelessWidget {
  const ScrollViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll View'),
      ),
      backgroundColor: Colors.grey.shade50,
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            UselessButton(),
            ExpensiveRow(),
            // OpacityAnimation(),
            OpacityComponent(),
            ExpensiveColumn(),
            CardList(),
            Footer(),
          ],
        )
      ),
    );
  }
}
