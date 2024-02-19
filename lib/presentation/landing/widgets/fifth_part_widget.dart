import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class FifthPartWidget extends StatelessWidget {
  const FifthPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [kBlack.withOpacity(0.4), kWhite],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                smallHeadText("Expense"),
                kHeight5,
                const Text("Expense this mounth"),
                kHeight5,
                const Text(
                  "\$ 0.00",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [kBlack.withOpacity(0.4), kWhite],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                smallHeadText("Order Statistics"),
                kHeight5,
                const AutoSizeText(
                  "Order Statistics of current mounth",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                kHeight5,
                const Text("⚪ Booked : 0"),
                kHeight5,
                const Text("🟡 Processing : 0"),
                kHeight5,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
