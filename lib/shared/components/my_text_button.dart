import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class MyTextButton extends StatelessWidget
{
  final Function() onPressed;
  final String text;
  final double fontSize;
  const MyTextButton({super.key,
    required this.onPressed,
    required this.text,
    this.fontSize = 26,
  });

  @override
  Widget build(BuildContext context)
  {
    return TextButton(
      onPressed: onPressed ,
      child: Text(
        text.tr,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
