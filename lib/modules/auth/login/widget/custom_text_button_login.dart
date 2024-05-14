import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/controller/auth/login/login_controller.dart';
import '../../../../shared/components/my_text_button.dart';
import '../../../../shared/styles/colors/app_colors.dart';

class CustomTextButtonLogin extends GetView<LoginController>
{
  const CustomTextButtonLogin({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Text(
            '27'.tr,
            style: TextStyle(
              fontSize: 20,
              color: AppColors.defaultColorG500,
            ),
          ),
          MyTextButton(
            onPressed: ()
            {
              controller.goToRegister();
            },
            text: '17'.tr,
            fontSize: 20,
          ),
        ],
      ),
    );
  }
}
