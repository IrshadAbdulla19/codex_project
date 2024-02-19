import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/commen_card_widget.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class InvoiceListItem extends StatelessWidget {
  const InvoiceListItem(
      {super.key,
      required this.name,
      required this.invoiceId,
      required this.date,
      required this.boxNum,
      required this.isPaid});
  final String name;
  final String invoiceId;
  final String date;
  final String boxNum;
  final bool isPaid;
  @override
  Widget build(BuildContext context) {
    return CommenCardWidget(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                kHeight5,
                Text(invoiceId),
                kHeight5,
                Text(date),
                kHeight5,
                kHeight5
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(boxNum),
                kHeight5,
                Text(isPaid ? "Paid" : "Pending"),
              ],
            )
          ],
        ),
        const Divider(
          height: 2,
          color: kBlack,
        ),
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                const Icon(Icons.wechat_rounded),
                smallHeadText("Share on WhatsApp"),
              ],
            ),
            smallHeadText("₹ Record Invoice Payment")
          ],
        ),
      ],
    ));
  }
}
