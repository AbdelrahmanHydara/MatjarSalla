import 'package:flutter/material.dart';

class FloatingActionButtonLayout extends StatelessWidget
{
  const FloatingActionButtonLayout({super.key});

  @override
  Widget build(BuildContext context)
  {
    return FloatingActionButton(
      child: Icon(
        Icons.shopping_basket_outlined,
      ),
      onPressed: () {},
    );
  }
}
