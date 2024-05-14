import 'package:flutter/material.dart';
import '../../../shared/styles/colors/app_colors.dart';

class CustomAppBarLayout extends StatelessWidget implements PreferredSizeWidget
{
  const CustomAppBarLayout({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          right: 10,
        ),
        child: Row(
          children:
          [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.defaultColorG200,
                    prefixIcon: const Icon(
                      Icons.search,
                    ),
                    hintText: "Find Product",
                    hintStyle: TextStyle(
                      fontSize: 19,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              width: 60,
              decoration: BoxDecoration(
                color: AppColors.defaultColorG200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.brightness_2_sharp,
                  size: 30,
                  color: AppColors.defaultColorG600,
                ),
                onPressed: ()
                {

                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
