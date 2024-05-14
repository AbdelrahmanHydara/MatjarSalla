import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/resetpassword/reset_password_controller.dart';
import '../../../../core/functions/valid_in_put.dart';
import '../../../../shared/components/default_text_form_field.dart';
import '../../../../shared/styles/colors/app_colors.dart';
import '../../../../shared/styles/icons/icon_broken.dart';

class CustomTextFormFieldResetPassword extends GetView<ResetPasswordController>
{
  const CustomTextFormFieldResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return GetBuilder<ResetPasswordController>(
      builder: (controller) => Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:
          [
            const SizedBox(
              height: 30,
            ),
            DefaultTextFormField(
              validate: (value)
              {
                return validInput(
                  min: 8,
                  max: 21,
                  type: '20',
                  value: value!,
                );
              },
              controller: controller.passwordController,
              labelText: '20'.tr,
              hintText: '21'.tr,
              color: AppColors.defaultColor,
              type: TextInputType.visiblePassword,
              suffix: IconBroken.Lock,
              isPassword: controller.isShowPassword,
              suffixPressed: ()
              {
                controller.changeShowPassword();
              },
            ),
            const SizedBox(
              height: 25,
            ),
            DefaultTextFormField(
              validate: (value)
              {
                return validInput(
                  min: 8,
                  max: 21,
                  type: '20',
                  value: value!,
                );
              },
              controller: controller.passwordController,
              labelText: '48'.tr,
              hintText: '37'.tr,
              color: AppColors.defaultColor,
              type: TextInputType.visiblePassword,
              suffix: IconBroken.Lock,
              isPassword: controller.isShowPassword,
              suffixPressed: ()
              {
                controller.changeShowPassword();
              },
            ),
            const SizedBox(
              height: 25,
            ),
          ]
        ),
      ),
    );
  }
}
