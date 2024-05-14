import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/forgetpassword/forget_password_controller.dart';
import '../widget/custom_app_bar_auth.dart';
import 'widget/forget_password_screen_body.dart';

class ForgetPasswordScreen extends StatelessWidget
{
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    Get.put(ForgetPasswordController());

    return Scaffold(
      appBar: kAppBarAuth(
        context: context,
        text: "28",
      ),
      body: ForgetPasswordScreenBody(),
    );
  }
}
