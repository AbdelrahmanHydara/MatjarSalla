import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/controller/layout/layout_controller.dart';
import 'widget/custom_app_bar_layout.dart';
import 'widget/bottom_navigation_bar_layout.dart';
import 'widget/floating_action_button_layout.dart';

class LayoutScreen extends StatelessWidget
{
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    Get.put(LayoutController());

    return GetBuilder<LayoutController>(
        builder: (controller) => Scaffold(
          appBar: CustomAppBarLayout(),
          body: controller.screens[controller.currentIndex],
          bottomNavigationBar: BottomNavigationBarLayout(),
          floatingActionButton: FloatingActionButtonLayout(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ),
    );
  }
}
