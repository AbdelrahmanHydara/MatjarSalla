import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/modules/auth/forgetpassword/forget_password_screen.dart';
import 'package:matjar_salla/modules/auth/register/register_screen.dart';
import '../../../core/class/status_request.dart';
import '../../../core/functions/handling_data.dart';
import '../../../core/services/services.dart';
import '../../../modules/home/home_screen.dart';
import '../../../shared/helper/remote/auth/login/login.dart';

class LoginController extends GetxController
{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List data = [];

  LoginData loginData = LoginData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  MyServices myServices = Get.find();

  login(context) async {
    if(formKey.currentState!.validate())
    {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(
          password: passwordController.text,
          email: emailController.text,
      );
      print("======================================= $response");
      statusRequest = handlingData(response);
      if(StatusRequest.success == statusRequest)
      {
        if(response['status'] == true)
        {
          myServices.sharedPreferences.setString("name",response['data']['name']);
          myServices.sharedPreferences.setString("email",response['data']['email']);
          myServices.sharedPreferences.setString("phone",response['data']['phone']);
          myServices.sharedPreferences.setString("token",response['data']['token']);
          myServices.sharedPreferences.setString("next","2");
          Get.offAll(HomeScreen());
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

  goToRegister() {
    Get.off(RegisterScreen());
  }

  goToForgetPassword() {
    Get.to(ForgetPasswordScreen());
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}