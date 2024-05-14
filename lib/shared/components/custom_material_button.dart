import 'package:flutter/material.dart';
import '../styles/colors/app_colors.dart';

class CustomMaterialButton extends StatelessWidget
{
  final String text;
  final Function() onTap;
  final double radius;
  final double width;
  final double height;

  const CustomMaterialButton({super.key,
    required this.text,
    required this.onTap,
    this.width = double.infinity,
    this.height = 50,
    this.radius = 20,
  });

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.defaultColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.defaultColorW,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}