import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/landing/widgets/third_item.dart';

class ForthPartWidget extends StatelessWidget {
  const ForthPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3),
      color: kGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Expanded(child: ThirdPartItemWidget()),
          SizedBox(
            width: 3,
            child: Container(
              color: kGray,
            ),
          ),
          const Expanded(child: ThirdPartItemWidget())
        ],
      ),
    );
  }
}
