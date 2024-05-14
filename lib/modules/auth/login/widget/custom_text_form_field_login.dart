import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/login/login_controller.dart';
import '../../../../core/functions/valid_in_put.dart';
import '../../../../shared/components/default_text_form_field.dart';
import '../../../../shared/styles/colors/app_colors.dart';
import '../../../../shared/styles/icons/icon_broken.dart';

class CustomTextFormFieldLogin extends GetView<LoginController>
{
  const CustomTextFormFieldLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return GetBuilder<LoginController>(
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
                  max: 30,
                  type: '18',
                  value: value!,
                );
              },
              controller: controller.emailController,
              labelText: '18'.tr,
              hintText: '19'.tr,
              color: AppColors.defaultColor,
              type: TextInputType.emailAddress,
              suffix: IconBroken.Message,
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
            // Padding(
            //   padding: const EdgeInsets.only(
            //     top: 14,
            //     bottom: 18,
            //   ),
            //   child: InkWell(
            //     onTap: ()
            //     {
            //       controller.goToForgetPassword();
            //     },
            //     child: Text(
            //       '28'.tr,
            //       textAlign: TextAlign.start,
            //       style: TextStyle(
            //         color: AppColors.defaultColorG500,
            //         fontSize: 18,
            //       ),
            //     ),
            //   ),
            // ),
          ]
        ),
      ),
    );
  }
}
