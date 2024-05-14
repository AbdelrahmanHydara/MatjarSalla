import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/images.dart';
import '../../../core/localization/change_locale.dart';
import '../../../shared/styles/colors/app_colors.dart';
import '../../onboarding/onboarding_screen.dart';
import 'custom_button_lang.dart';

class LanguageScreenBody extends GetView<MyLocaleController>
{
  const LanguageScreenBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            const SizedBox(
              height: 80,
            ),
            Text(
              '1'.tr,
              style: const TextStyle(
                fontSize: 38,
                color: AppColors.defaultColorB,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Image(
                image: AssetImage(AppImageAssets.choose),
            ),
            CustomButtonLang(
              text: '2',
              onTap:()
              {
                controller.changeLang("ar");
                Get.to(const OnBoardingScreen());
              },
            ),
            CustomButtonLang(
              text: '3',
              onTap:()
              {
                controller.changeLang("en");
                Get.to(const OnBoardingScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
