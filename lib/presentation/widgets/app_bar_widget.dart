import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';

import 'commen_text_widgets.dart';

PreferredSize appBarWidget(BuildContext contex, String head,
    [List<Widget>? actions]) {
  return PreferredSize(
      preferredSize: Size.fromHeight(MediaQuery.of(contex).size.height * 0.06),
      child: Container(
        color: kBlack,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(contex);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: kWhite,
                    )),
                kWidth20,
                mainHeadText(head),
                const Spacer(),
                Wrap(children: actions ?? [])
              ],
            ),
          ),
        ),
      ));
}
