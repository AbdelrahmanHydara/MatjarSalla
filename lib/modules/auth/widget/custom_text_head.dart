import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextHead extends StatelessWidget
{
  final String text;
  final double fontSize;

  const CustomTextHead({super.key,
    required this.text,
    this.fontSize = 50,
  });

  @override
  Widget build(BuildContext context)
  {
    return Text(
      text.tr,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
      textAlign: TextAlign.center,
    );
  }
}