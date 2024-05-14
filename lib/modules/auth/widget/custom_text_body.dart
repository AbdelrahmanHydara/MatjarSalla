import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/styles/colors/app_colors.dart';

class CustomTextBody extends StatelessWidget
{
  final String text;
  final double fontSize;

  const CustomTextBody({super.key,
    required this.text,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context)
  {
    return Text(
      text.tr,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.defaultColorG500,
        fontSize: fontSize,
      ),
    );
  }
}