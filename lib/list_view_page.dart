import 'package:flutter/material.dart';
import 'package:list_perfs_demo/common/card_list.dart';
import 'package:list_perfs_demo/common/expensive_column.dart';
import 'package:list_perfs_demo/common/expensive_row.dart';
import 'package:list_perfs_demo/common/footer.dart';
import 'package:list_perfs_demo/common/header.dart';
import 'package:list_perfs_demo/common/opacity_component.dart';
import 'package:list_perfs_demo/common/useless_button.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      backgroundColor: Colors.grey.shade50,
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Header();
          } else if (index == 1) {
            return const UselessButton();
          } else if (index == 2) {
            return const ExpensiveRow();
          } else if (index == 3) {
            // return const OpacityAnimation();
            return const OpacityComponent();
          } else if (index == 4) {
            return const ExpensiveColumn();
          } else if (index == 5) {
            return const CardList();
          } else if (index == 6) {
            return const Footer();
          }
          return const SizedBox();
        },
      ),
    );
  }
}
