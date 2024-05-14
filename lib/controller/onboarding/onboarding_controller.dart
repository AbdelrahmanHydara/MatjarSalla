import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/services/services.dart';
import '../../models/onboarding_model.dart';
import '../../modules/auth/login/login_screen.dart';

class OnBoardingController extends GetxController
{
  MyServices myServices = Get.find();

  late PageController pageController;

  int currentIndex = 0;

  next() {
    currentIndex ++;

    if(currentIndex > OnBoardingList.length-1)
    {
      goToLogin();
    } else
    {
      pageController.nextPage(
        duration: const Duration(
          milliseconds: 900,
        ) ,
        curve: Curves.easeInOut,
      );
    }
  }

  goToLogin() {
    myServices.sharedPreferences.setString("next","1");
    Get.offAll(const LoginScreen());
  }

  onChanged(int index) {
    currentIndex = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}