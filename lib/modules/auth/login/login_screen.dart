import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/controller/auth/login/login_controller.dart';
import '../widget/custom_app_bar_auth.dart';
import 'widget/login_screen_body.dart';

class LoginScreen extends StatelessWidget
{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    Get.put(LoginController());

    return Scaffold(
      appBar: kAppBarAuth(
          text: '14',
          context: context,
      ),
      body: const LoginScreenBody(),
    );
  }
}
