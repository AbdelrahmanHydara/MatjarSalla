import 'package:flutter/material.dart';
import 'package:matjar_salla/shared/styles/colors/app_colors.dart';
import '../styles/icons/icon_broken.dart';

class MyIconButtonBack extends StatelessWidget
{
  const MyIconButtonBack({super.key});

  @override
  Widget build(BuildContext context)
  {
    return IconButton(
      onPressed: ()
      {
        Navigator.pop(context);
      },
      icon: const Icon(
        IconBroken.Arrow___Left_2 ,
        color: AppColors.defaultColor,
        size: 32,
      ),
    );
  }
}