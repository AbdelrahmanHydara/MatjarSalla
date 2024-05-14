import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/components/custom_material_button.dart';

Future<bool> alertAppExit()
{
  Get.defaultDialog(
    radius: 20,
    title: '56'.tr,
    middleText: '57'.tr,
    titleStyle: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w800,
    ),
    middleTextStyle: TextStyle(
      fontSize: 20,
    ),
    actions:
    [
      const SizedBox(
        height: 5,
      ),
      Card(
        elevation: 10,
        shape: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        child: CustomMaterialButton(
          text: '58'.tr,
          radius: 12,
          onTap: ()
          {
            exit(0);
          },
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Card(
        elevation: 10,
        shape: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        child: CustomMaterialButton(
          onTap: ()
          {
            Get.back();
          },
          text: '59'.tr,
          radius: 12,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
    ],
  );
  return Future.value(true);
}