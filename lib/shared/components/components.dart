import 'package:flutter/material.dart';
import '../styles/colors/app_colors.dart';

myDivider() => Container(
  height: 1,
  color: Colors.grey[400],
  width: double.infinity,
);

myCircularProgressIndicator() => const Center(
  child: CircularProgressIndicator(
    color: AppColors.defaultColor,
  ),
);

buildSeparator() => Container(
  height: 1.0,
  width: double.infinity,
  color: Colors.grey[300],
);