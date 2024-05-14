import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/verification/verification_code_reset_password_controller.dart';
import '../widget/custom_app_bar_auth.dart';
import 'widget/verification_code_reset_password_screen_body.dart';

class VerificationCodeResetPasswordScreen extends StatelessWidget
{
  const VerificationCodeResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    Get.put(VerificationCodeResetPasswordController());

    return Scaffold(
      appBar: kAppBarAuth(
        context: context,
        text: "43",
      ),
      body: VerificationCodeResetPasswordScreenBody(),
    );
  }
}
