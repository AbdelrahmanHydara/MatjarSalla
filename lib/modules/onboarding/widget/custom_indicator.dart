import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/models/onboarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../controller/onboarding/onboarding_controller.dart';
import '../../../shared/components/custom_material_button.dart';
import '../../../shared/styles/colors/app_colors.dart';

class CustomIndicatorScreen extends GetView<OnBoardingController>
{
  const CustomIndicatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        SmoothPageIndicator(
          controller: controller.pageController,
          count: OnBoardingList.length ,
          effect: const ExpandingDotsEffect(
            dotColor: AppColors.defaultColorG,
            activeDotColor: AppColors.defaultColor,
            dotHeight: 10,
            dotWidth: 10,
            expansionFactor: 3,
            spacing: 5
          ),
        ),
        const Spacer(),
        Card(
          elevation: 20,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          child: CustomMaterialButton(
            text: '5'.tr,
            width: 100,
            height: 50,
            radius: 12,
            onTap: ()
            {
              controller.next();
            },
          ),
        ),
      ],
    );
  }
}
