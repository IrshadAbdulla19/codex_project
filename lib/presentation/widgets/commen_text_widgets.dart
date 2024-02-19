import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';

Widget smallHeadText(String text) {
  return AutoSizeText(
    text,
    style: const TextStyle(fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}

Widget smallHeadTextWhite(String text) {
  return AutoSizeText(
    text,
    style: const TextStyle(fontWeight: FontWeight.bold, color: kWhite),
    textAlign: TextAlign.center,
  );
}

Widget smallHeadTextyellow(String text) {
  return AutoSizeText(text,
      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.red));
}

Widget mainHeadText(String text) {
  return AutoSizeText(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      color: kWhite,
    ),
    minFontSize: 18,
  );
}
