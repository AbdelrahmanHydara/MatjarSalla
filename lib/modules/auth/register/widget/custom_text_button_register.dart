import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/register/register_controller.dart';
import '../../../../shared/components/my_text_button.dart';
import '../../../../shared/styles/colors/app_colors.dart';

class CustomTextButtonRegister extends GetView<RegisterController>
{
  const CustomTextButtonRegister({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Text(
            '26'.tr,
            style: TextStyle(
              fontSize: 22,
              color: AppColors.defaultColorG500,
            ),
          ),
          MyTextButton(
            onPressed: ()
            {
              controller.goToLogin();
            },
            text: '14'.tr,
            fontSize: 22,
          ),
        ],
      ),
    );
  }
}
