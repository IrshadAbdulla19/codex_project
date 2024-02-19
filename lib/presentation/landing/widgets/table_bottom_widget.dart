import 'package:flutter/material.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class TableBottomWidgets extends StatelessWidget {
  const TableBottomWidgets({super.key, required this.name, required this.icon});

  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Icon(icon), smallHeadText(name)],
    );
  }
}
