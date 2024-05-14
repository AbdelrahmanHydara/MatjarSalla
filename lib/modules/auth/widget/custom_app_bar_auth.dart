import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar kAppBarAuth({
  required String text,
  required BuildContext context,
}) => AppBar(
  elevation: 0,
  centerTitle: true,
  title: Text(
    text.tr,
    style: Theme.of(context).textTheme.labelMedium,
  ),
);