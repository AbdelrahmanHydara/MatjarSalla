import 'package:flutter/material.dart';
import '../../../shared/styles/text/text_style.dart';
import 'custom_category_item.dart';

class CustomCategoryHome extends StatelessWidget
{
  const CustomCategoryHome({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          SizedBox(
            height: 20,
          ),
          Text(
            "Categories",
            style: TextStyles.semiBold28,
          ),
          SizedBox(
            height: 20,
          ),
          CustomCategoryItem(),
          SizedBox(
            height: 20,
          ),
          Text(
            "New Products",
            style: TextStyles.semiBold28,
          ),
        ],
      ),
    );
  }
}
