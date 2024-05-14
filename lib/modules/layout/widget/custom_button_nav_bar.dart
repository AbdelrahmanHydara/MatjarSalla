import 'package:flutter/material.dart';
import '../../../shared/styles/colors/app_colors.dart';

class CustomButtonNavBar extends StatelessWidget
{
  final String text;
  final IconData icon;
  final void Function() onTap;
  final bool activeColor;

  const CustomButtonNavBar({super.key,
    required this.text,
    required this.onTap,
    required this.icon,
    required this.activeColor,
  });

  @override
  Widget build(BuildContext context)
  {
    return MaterialButton(
      onPressed: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:
        [
          Icon(
            icon,
            color: activeColor? AppColors.defaultColor : AppColors.defaultColorG,
          ),
          Text(
              text,
            style: TextStyle(
              color: activeColor? AppColors.defaultColor : AppColors.defaultColorG,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
