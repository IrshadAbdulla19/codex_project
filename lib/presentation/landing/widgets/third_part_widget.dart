import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/landing/widgets/third_item.dart';

class ThirdPartWidget extends StatelessWidget {
  const ThirdPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: kGray,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [ThirdPartItemWidget(), ThirdPartItemWidget()],
              ),
            ),
            SizedBox(
              width: 3,
              child: Container(
                color: kGray,
              ),
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [ThirdPartItemWidget(), ThirdPartItemWidget()],
              ),
            ),
          ],
        ));
  }
}
