import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/commen_card_widget.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem(
      {super.key,
      required this.name,
      required this.salesPrice,
      required this.purchasePrice,
      required this.boxNum});
  final String name;
  final String salesPrice;
  final String purchasePrice;
  final String boxNum;
  @override
  Widget build(BuildContext context) {
    return CommenCardWidget(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            smallHeadText(name),
            Column(
              children: [
                Text(boxNum),
                kHeight5,
                const Text("Box"),
              ],
            )
          ],
        ),
        kHeight5,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Sales Price"),
                kHeight5,
                smallHeadText("₹ $salesPrice"),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Purchase Price"),
                kHeight5,
                smallHeadText("₹ $purchasePrice"),
              ],
            ),
            const Icon(Icons.home_work_outlined)
          ],
        ),
      ],
    ));
  }
}
