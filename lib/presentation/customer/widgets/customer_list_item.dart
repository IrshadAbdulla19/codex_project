import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/commen_card_widget.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class CoustomerListItem extends StatelessWidget {
  const CoustomerListItem(
      {super.key,
      required this.name,
      required this.subname,
      required this.amount});
  final String name;
  final String subname;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return CommenCardWidget(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [smallHeadText(name), kHeight10, Text(subname)],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(amount, style: const TextStyle(fontWeight: FontWeight.bold)),
            kHeight10,
            const Row(
              children: [
                Icon(Icons.cancel_schedule_send_outlined),
                kWidth5,
                Text(
                  "Send Remainder",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ],
    ));
  }
}
