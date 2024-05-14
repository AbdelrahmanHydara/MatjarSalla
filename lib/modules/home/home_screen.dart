import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/controller/home/home_controller.dart';
import 'package:matjar_salla/modules/home/widget/custom_carousel_slider.dart';
import 'package:matjar_salla/modules/home/widget/custom_category_home.dart';
import 'package:matjar_salla/modules/home/widget/grid_view_products.dart';
import '../../shared/components/components.dart';
import '../../shared/components/my_conditional_builder.dart';

class HomeScreen extends StatelessWidget
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    Get.put(HomeController());

    return GetBuilder<HomeController>(
      builder: (controller) => MyConditionalBuilder(
        condition: controller.homeModel != null && controller.categoriesModel != null,
        builder: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: const Column(
            children:
            [
              SizedBox(
                height: 20,
              ),
              CustomCarouselSlider(),
              CustomCategoryHome(),
              GridViewProducts(),
            ],
          ),
        ),
        fallback: myCircularProgressIndicator(),
      ),
    );
  }
}
