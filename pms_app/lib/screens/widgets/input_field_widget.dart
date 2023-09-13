import 'package:flutter/material.dart';
import 'package:pms_app/screens/app_utils.dart';

class inputField extends StatelessWidget {
  const inputField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.obscureText = true,
  });

  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: obscureText,
        controller: controller,
        style: const TextStyle(
          color: colorBlack,
          fontFamily: fontFamily,
        ),
        textAlign: TextAlign.center,
        cursorColor: colorBlack,
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: Icon(
            icon,
            size: 25.0,
            color: colorBlack,
          ),
          focusColor: colorBlack,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: colorBlack,
            fontSize: 15.0,
            fontFamily: fontFamily,
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: colorBlack),
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: colorBlack),
          ),
          contentPadding: const EdgeInsets.only(top: 15.0),
        ),
      ),
    );
  }
}
