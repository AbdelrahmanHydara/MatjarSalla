import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/core/class/status_request.dart';
import 'package:matjar_salla/modules/auth/verification/verification_code_reset_password_screen.dart';
import '../../../core/functions/handling_data.dart';
import '../../../shared/helper/remote/auth/forgetpassword/check_email.dart';

class ForgetPasswordController extends GetxController
{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  StatusRequest statusRequest = StatusRequest.none;

  CheckEmailData checkEmailData = CheckEmailData(Get.find());

  goToVerificationCodeResetPassword(context) async {
    if(formKey.currentState!.validate())
    {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postData(
        email: emailController.text,
      );
      print("======================================= $response");
      statusRequest = handlingData(response);
      if(StatusRequest.success == statusRequest)
      {
        if(response['status'] == true)
        {
          Get.off(VerificationCodeResetPasswordScreen(),
            arguments:
            {
              "email" : emailController.text,
            }
          );
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

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
}