import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/onboarding/onboarding_controller.dart';
import '../../../models/onboarding_model.dart';
import 'build_on_board_item.dart';
import 'custom_indicator.dart';

class OnboardingScreenBody extends StatelessWidget
{
  const OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    OnBoardingController controller = Get.put(OnBoardingController());

    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        children:
        [
          Expanded(
            child: PageView.builder(
              onPageChanged: (int index)
              {
                controller.onChanged(index);
              },
              controller: controller.pageController,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context,index) => buildOnboardItem(OnBoardingList[index],context),
              itemCount: OnBoardingList.length,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomIndicatorScreen(),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
