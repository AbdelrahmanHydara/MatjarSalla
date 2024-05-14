import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/onboarding/onboarding_controller.dart';
import '../../shared/components/my_icon_button_back.dart';
import '../../shared/components/my_text_button.dart';
import 'widget/onboarding_screen_body.dart';

class OnBoardingScreen extends StatelessWidget
{
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    OnBoardingController controller = OnBoardingController();
    return Scaffold(
      appBar: AppBar(
        leading: const MyIconButtonBack(),
        actions:
        [
          MyTextButton(
            text: '4'.tr,
            onPressed: ()
            {
              controller.goToLogin();
            },
          ),
        ],
      ),
      body: const OnboardingScreenBody(),
    );
  }
}