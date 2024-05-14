import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/components/custom_material_button.dart';

class CustomButtonLang extends StatelessWidget
{
  final String text;
  final Function() onTap;

  const CustomButtonLang({super.key,
    required this.text,
    required this.onTap});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: Card(
        elevation: 20,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        child: CustomMaterialButton(
          text: text.tr,
          width: 250,
          height: 55,
          radius: 20,
          onTap: onTap,
        ),
      ),
    );
  }
}
