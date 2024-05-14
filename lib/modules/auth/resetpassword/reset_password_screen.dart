import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/resetpassword/reset_password_controller.dart';
import '../widget/custom_app_bar_auth.dart';
import 'widget/reset_password_screen_body.dart';

class ResetPasswordScreen extends StatelessWidget
{
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    Get.put(ResetPasswordController());

    return Scaffold(
      appBar: kAppBarAuth(
        context: context,
        text: "36",
      ),
      body: ResetPasswordScreenBody(),
    );
  }
}
