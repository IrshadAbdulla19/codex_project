import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';

class CommenCardWidget extends StatelessWidget {
  const CommenCardWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        elevation: 8,
        color: kWhite.withOpacity(0.7),
        shadowColor: primaryBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(padding: const EdgeInsets.all(15.0), child: child));
  }
}
