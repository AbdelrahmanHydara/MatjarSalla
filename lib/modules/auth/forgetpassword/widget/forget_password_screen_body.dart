import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/forgetpassword/forget_password_controller.dart';
import '../../../../core/class/handling/handling_data_request.dart';
import '../../../../core/functions/valid_in_put.dart';
import '../../../../shared/components/default_text_form_field.dart';
import '../../../../shared/styles/colors/app_colors.dart';
import '../../../../shared/styles/icons/icon_broken.dart';
import '../../widget/custom_material_button_auth.dart';
import '../../widget/custom_text_body.dart';
import '../../widget/custom_text_head.dart';

class ForgetPasswordScreenBody extends GetView<ForgetPasswordController>
{
  const ForgetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GetBuilder<ForgetPasswordController>(
      builder: (controller) => HandlingDataRequest(
        statusRequest: controller.statusRequest,
        widget: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: controller.formKey,
            child: Column(
              children:
              [
                const SizedBox(
                  height: 34,
                ),
                CustomTextHead(
                    text: '40'.tr),
                const SizedBox(
                  height: 10,
                ),
                CustomTextBody(
                    text: '44'.tr),
                const SizedBox(
                  height: 40,
                ),
                DefaultTextFormField(
                  validate: (value)
                  {
                    return validInput(
                      min: 8,
                      max: 21,
                      type: '18',
                      value: value!,
                    );
                  },
                  controller: TextEditingController(),
                  labelText: '18'.tr,
                  hintText: '19'.tr,
                  color: AppColors.defaultColor,
                  type: TextInputType.emailAddress,
                  suffix: IconBroken.Message,
                ),
                const SizedBox(
                  height: 35,
                ),
                CustomMaterialButtonAuth(
                  text: '35'.tr,
                  onTap: ()
                  {
                    controller.goToVerificationCodeResetPassword(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
