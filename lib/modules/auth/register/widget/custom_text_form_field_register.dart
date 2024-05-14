import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/register/register_controller.dart';
import '../../../../core/functions/valid_in_put.dart';
import '../../../../shared/components/default_text_form_field.dart';
import '../../../../shared/styles/colors/app_colors.dart';
import '../../../../shared/styles/icons/icon_broken.dart';

class CustomTextFormFieldRegister extends GetView<RegisterController>
{
  const CustomTextFormFieldRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Form(
      key: controller.formKey,
      child: Column(
        children:
        [
          const SizedBox(
            height: 34,
          ),
          DefaultTextFormField(
            validate: (value)
            {
              return validInput(
                min: 3,
                max: 21,
                type: '22',
                value: value!,
              );
            },
            controller: controller.usernameController,
            labelText: '22'.tr,
            hintText: '23'.tr,
            color: AppColors.defaultColor,
            type: TextInputType.name,
            suffix: IconBroken.Profile,
          ),
          const SizedBox(
            height: 25,
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
            isPassword: controller.isShowPassword,
            suffix: IconBroken.Lock,
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
                min: 11,
                max: 18,
                type: '24',
                value: value!,
              );
            },
            controller: controller.phoneController,
            labelText: '24'.tr,
            hintText: '25'.tr,
            color: AppColors.defaultColor,
            type: TextInputType.phone,
            suffix: IconBroken.Call,
          ),
          const SizedBox(
            height: 38,
          ),
        ]
        ,
      ),
    );
  }
}