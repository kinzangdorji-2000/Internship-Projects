import 'package:flutter/material.dart';
import 'package:pms_app/screens/app_utils.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({

    required this.text,
    required this.onPressed,
    super.key,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: MaterialButton(
        onPressed: onPressed,
        elevation: 5.0,
        child: Container(
          decoration: BoxDecoration(
            color: colorBlack,
            borderRadius: BorderRadius.circular(30),
          ),
          constraints: const BoxConstraints(maxHeight: 60),
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              color: colorWhite,
              fontSize: 16.0,
              fontFamily: fontFamily,
            ),
          ),
        ),
      ),
    );
  }
}
