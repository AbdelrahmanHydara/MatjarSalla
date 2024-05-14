import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/controller/auth/login/login_controller.dart';
import '../../../../core/class/handling/handling_data_request.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/functions/alert_app_exit.dart';
import '../../widget/custom_material_button_auth.dart';
import '../../widget/custom_text_body.dart';
import '../../widget/custom_text_head.dart';
import 'custom_text_button_login.dart';
import 'custom_text_form_field_login.dart';

class LoginScreenBody extends GetView<LoginController>
{
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GetBuilder<LoginController>(
      builder: (controller) => HandlingDataRequest(
        statusRequest: controller.statusRequest,
        widget: WillPopScope(
          onWillPop: alertAppExit,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children:
                [
                  Image.asset(
                    AppImageAssets.login,
                    height: 250,
                  ),
                  CustomTextHead(
                      text: '15'.tr),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextBody(
                      text: '29'.tr),
                  const CustomTextFormFieldLogin(),
                  CustomMaterialButtonAuth(
                    text: '14'.tr,
                    onTap: ()
                    {
                      controller.login(context);
                    },
                  ),
                  CustomTextButtonLogin(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
