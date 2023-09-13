import 'package:flutter/material.dart';

const Color colorWhite = Colors.white;
const Color colorPrimary = Color.fromARGB(255, 230, 234, 235);
const Color colorBlack = Colors.black;
const Color colorGrey = Colors.grey;

const String fontFamily = 'PTSansNarrow';

showScaffold(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}
