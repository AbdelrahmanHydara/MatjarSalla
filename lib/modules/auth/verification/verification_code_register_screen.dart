import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/modules/auth/verification/widget/verification_code_register_screen_body.dart';
import '../../../controller/auth/verification/verification_code_register_controller.dart';
import '../widget/custom_app_bar_auth.dart';

class VerificationCodeRegisterScreen extends StatelessWidget
{
  const VerificationCodeRegisterScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    Get.put(VerificationCodeRegisterController());

    return Scaffold(
      appBar: kAppBarAuth(
        context: context,
        text: "43",
      ),
      body: VerificationCodeRegisterScreenBody(),
    );
  }
}
