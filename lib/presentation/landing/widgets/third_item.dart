import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class ThirdPartItemWidget extends StatelessWidget {
  const ThirdPartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [kBlack.withOpacity(0.4), kWhite],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                smallHeadText("Sales"),
                const AutoSizeText("sales this mounth"),
                smallHeadTextyellow("\$ 0.00"),
              ],
            ),
            const Icon(
              Icons.navigate_next,
              color: kWhite,
            )
          ],
        ),
      ),
    );
  }
}
