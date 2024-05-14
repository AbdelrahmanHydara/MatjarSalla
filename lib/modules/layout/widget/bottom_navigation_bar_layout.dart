import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/controller/layout/layout_controller.dart';
import 'custom_button_nav_bar.dart';

class BottomNavigationBarLayout extends GetView<LayoutController>
{
  const BottomNavigationBarLayout({super.key});

  @override
  Widget build(BuildContext context)
  {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      child: Row(
        children:
        [
          ...List.generate(
            controller.screens.length+1,
            (index) {
              int current = index > 2 ? index-1 : index;

              return index == 2 ? const Spacer() : CustomButtonNavBar(
                onTap: ()
                {
                  controller.changeBottomNavBar(current);
                },
                text: controller.titles[current],
                icon: controller.icons[current],
                activeColor: controller.currentIndex == current ? true : false,
              );
            },
          ),
        ],
      ),
    );
  }
}
