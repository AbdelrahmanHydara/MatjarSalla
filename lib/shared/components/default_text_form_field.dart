import 'package:flutter/material.dart';
import '../styles/colors/app_colors.dart';

class DefaultTextFormField extends StatelessWidget
{
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final IconData? prefix;
  final Color color;
  final Function(String)? onChange;
  final Function(String)? onSubmit;
  final Function()? onTap;
  final TextInputType type;
  final String? Function(String?) validate;
  final Function()? suffixPressed;
  final IconData? suffix;
  final bool isPassword;

  const DefaultTextFormField({super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.color,
    required this.type,
    required this.validate,
    this.suffixPressed,
    this.suffix,
    this.prefix,
    this.onChange,
    this.onSubmit,
    this.onTap,
    this.isPassword  = false,
  });

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              labelText,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: AppColors.defaultColorG500,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 14,),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: Icon(
            prefix,
            color: color,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              suffix,
            ),
            onPressed: suffixPressed ,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )
      ),
      obscureText: isPassword,
      onTap: onTap,
      keyboardType: type,
      onChanged: onChange,
      onFieldSubmitted: onSubmit,
      validator: (String? s)
      {
        return validate(s);
      },
    );
  }
}
