import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/core/class/status_request.dart';
import 'package:matjar_salla/modules/auth/resetpassword/widget/success_reset_password_screen.dart';

import '../../../core/functions/handling_data.dart';
import '../../../shared/helper/remote/auth/forgetpassword/reset_password.dart';

class ResetPasswordController extends GetxController
{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

  String? email;

  StatusRequest statusRequest = StatusRequest.none;

  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());

  goToSuccessResetPassword(context) async {
    if(passwordController.text != rePasswordController)
    {
      return AwesomeDialog(
        context: context,
        dialogType: DialogType.warning,
        animType: AnimType.rightSlide,
        title: '56'.tr,
        desc: "Password Not Match",
      ).show();
    }
    if(formKey.currentState!.validate())
    {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postData(
        password: passwordController.text,
        email: email!,
      );
      print("======================================= $response");
      statusRequest = handlingData(response);
      if(StatusRequest.success == statusRequest)
      {
        if(response['status'] == true)
        {
          Get.off(SuccessResetPasswordScreen());
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

  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }
}