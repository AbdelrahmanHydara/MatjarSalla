import 'package:flutter/material.dart';
import '../../../shared/components/custom_material_button.dart';

class CustomMaterialButtonAuth extends StatelessWidget
{
  final String text;
  final Function() onTap;

  const CustomMaterialButtonAuth({Key? key,
    required this.text,
    required this.onTap}) :super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Card(
      elevation: 8,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      child: CustomMaterialButton(
        onTap: onTap,
        text: text,
        width: double.infinity,
        height: 50,
        radius: 30,
      ),
    );
  }
}
