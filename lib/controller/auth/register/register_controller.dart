import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/core/functions/handling_data.dart';
import 'package:matjar_salla/modules/auth/login/login_screen.dart';
import '../../../core/class/status_request.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import '../../../modules/auth/register/widget/success_register_screen.dart';
import '../../../shared/helper/remote/auth/register/register.dart';

class RegisterController extends GetxController
{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  List data = [];

  RegisterData registerData = RegisterData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  register(context) async {
    if(formKey.currentState!.validate())
    {
      statusRequest = StatusRequest.loading;
      update();
      var response = await registerData.postData(
        email: emailController.text,
        phone: phoneController.text,
        username: usernameController.text,
        password: passwordController.text,
      );
      print("======================================= $response");
      statusRequest = handlingData(response);
      if(StatusRequest.success == statusRequest)
      {
        if(response['status'] == true)
        {
          Get.off(SuccessRegisterScreen());
          // Get.off(VerificationCodeRegisterScreen(),
          //     arguments:
          //     {
          //       "email" : emailController.text,
          //     });
        } else
        {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.warning,
            animType: AnimType.rightSlide,
            title: '56'.tr,
            desc: response["message"],
          ).show();
          statusRequest = StatusRequest.error;
        }
      }
      update();
    }
  }

  bool isShowPassword = true;

  changeShowPassword() {
    isShowPassword = !isShowPassword;
    update();
  }

  goToLogin(){
    Get.off(LoginScreen());
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

}