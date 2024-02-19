import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/landing/widgets/table_item_widget.dart';

class LandingPageTableWidget extends StatelessWidget {
  LandingPageTableWidget({super.key});

  final List<TableItemWidgetModel> tableitemList = [
    TableItemWidgetModel(name: "Invoice", icon: Icons.list_alt_rounded),
    TableItemWidgetModel(name: "Estimate", icon: Icons.table_chart_sharp),
    TableItemWidgetModel(
        name: "Clint/Supplier", icon: Icons.supervised_user_circle_outlined),
    TableItemWidgetModel(name: "Product", icon: Icons.backup_table_rounded),
    TableItemWidgetModel(name: "Payment", icon: Icons.add_card_rounded),
    TableItemWidgetModel(name: "Purchase", icon: Icons.table_view),
    TableItemWidgetModel(name: "Sales Order", icon: Icons.view_list_outlined),
    TableItemWidgetModel(
        name: "Purchase Order", icon: Icons.file_copy_outlined),
    TableItemWidgetModel(
        name: "Delivery Note", icon: Icons.table_chart_rounded),
    TableItemWidgetModel(name: "Inventory", icon: Icons.monetization_on),
    TableItemWidgetModel(
        name: "Sale Return", icon: Icons.supervised_user_circle_outlined),
    TableItemWidgetModel(name: "Expence", icon: Icons.table_view),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [kBlack, kWhite],
        ),
      ),
      child: GridView.builder(
          itemCount: tableitemList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 2, crossAxisSpacing: 2, crossAxisCount: 4),
          itemBuilder: (context, index) {
            var tableItem = tableitemList[index];
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: TableItemWidget(
                headName: tableItem.name,
                icon: tableItem.icon,
              ),
            );
          }),
    );
  }
}

class TableItemWidgetModel {
  String name;
  IconData icon;

  TableItemWidgetModel({required this.name, required this.icon});
}
