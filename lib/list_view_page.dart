import 'package:flutter/material.dart';
import 'package:list_perfs_demo/common/card_list.dart';
import 'package:list_perfs_demo/common/expensive_column.dart';
import 'package:list_perfs_demo/common/expensive_row.dart';
import 'package:list_perfs_demo/common/footer.dart';
import 'package:list_perfs_demo/common/header.dart';
import 'package:list_perfs_demo/common/opacity_component.dart';
import 'package:list_perfs_demo/common/useless_button.dart';

enum _PageWidgets {
  header(0),
  uselessButton(1),
  expensiveRow(2),
  opacityComponent(3),
  expensiveColumn(4),
  cardList(5),
  footer(6);

  final int id;
  const _PageWidgets(this.id);
}

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
        itemCount: _PageWidgets.values.length,
        itemBuilder: (context, index) {
          if (index == _PageWidgets.header.id) {
            return const Header();
          } else if (index == _PageWidgets.uselessButton.id) {
            return const UselessButton();
          } else if (index == _PageWidgets.expensiveRow.id) {
            return const ExpensiveRow();
          } else if (index == _PageWidgets.opacityComponent.id) {
            return const OpacityComponent();
          } else if (index == _PageWidgets.expensiveColumn.id) {
            return const ExpensiveColumn();
          } else if (index == _PageWidgets.cardList.id) {
            return const CardList();
          } else if (index == _PageWidgets.footer.id) {
            return const Footer();
          }
          return const SizedBox();
        },
      ),
    );
  }
}
