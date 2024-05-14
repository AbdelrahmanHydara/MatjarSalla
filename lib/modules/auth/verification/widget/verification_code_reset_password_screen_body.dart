import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/verification/verification_code_reset_password_controller.dart';
import '../../../../core/class/handling/handling_data_request.dart';
import '../../../../shared/styles/colors/app_colors.dart';
import '../../widget/custom_text_body.dart';
import '../../widget/custom_text_head.dart';

class VerificationCodeResetPasswordScreenBody extends GetView<VerificationCodeResetPasswordController>
{
  const VerificationCodeResetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GetBuilder<VerificationCodeResetPasswordController>(
      builder: (controller) => HandlingDataRequest(
        statusRequest: controller.statusRequest,
        widget: Column(
          children:
          [
            const SizedBox(
              height: 34,
            ),
            CustomTextHead(
                text: '39'.tr),
            const SizedBox(
              height: 10,
            ),
            CustomTextBody(
                text: '38'.tr),
            const SizedBox(
              height: 30,
            ),
            OtpTextField(
              fieldWidth: 60,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 4,
              focusedBorderColor: AppColors.defaultColor,
              borderColor: AppColors.defaultColor,
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                controller.goToResetPassword(context,verificationCode);
              },
            ),
          ],
        ),
      ),
    );
  }
}
