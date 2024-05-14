import 'package:flutter/material.dart';
import '../widget/custom_app_bar_auth.dart';
import 'widget/register_screen_body.dart';

class RegisterScreen extends StatelessWidget
{
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar:  kAppBarAuth(
        text: '17',
        context: context,
      ),
      body: const RegisterScreenBody(),
    );
  }
}
