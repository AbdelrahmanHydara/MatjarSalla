import 'package:get/get.dart';
import 'package:matjar_salla/core/constants/images.dart';

class OnBoardingModel
{
  final String image;
  final String title;
  final String body;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

List<OnBoardingModel> OnBoardingList = [
  OnBoardingModel(
      image: AppImageAssets.onboarding1,
      title: '6'.tr,
      body: '7'.tr,
  ),
  OnBoardingModel(
      image: AppImageAssets.onboarding2,
      title: '8'.tr,
      body: '9'.tr,
  ),
  OnBoardingModel(
      image: AppImageAssets.onboarding3,
      title: '10'.tr,
      body: '11'.tr,
  ),
  OnBoardingModel(
      image: AppImageAssets.onboarding4,
      title: '12'.tr,
      body: '13'.tr,
  ),
];