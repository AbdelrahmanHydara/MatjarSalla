import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/modules/auth/login/login_screen.dart';
import '../../../../shared/styles/colors/app_colors.dart';
import '../../../../shared/styles/icons/icon_broken.dart';
import '../../widget/custom_app_bar_auth.dart';
import '../../widget/custom_material_button_auth.dart';
import '../../widget/custom_text_body.dart';
import '../../widget/custom_text_head.dart';

class SuccessResetPasswordScreen extends StatelessWidget
{
  const SuccessResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: kAppBarAuth(
          text: '47'.tr,
          context: context),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            children:
            [
              Expanded(
                child: ListView(
                  children:
                  [
                    const Icon(
                      IconBroken.Shield_Done,
                      size: 350,
                      color: AppColors.defaultColor,
                    ),
                    CustomTextHead(
                        text: '32'.tr
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextBody(
                        text: '41'.tr),
                  ],
                ),
              ),
              CustomMaterialButtonAuth(
                text: '33'.tr,
                onTap: ()
                {
                  Get.offAll(LoginScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}