import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/core/class/status_request.dart';
import '../../../core/functions/handling_data.dart';
import '../../../modules/auth/resetpassword/reset_password_screen.dart';
import '../../../shared/helper/remote/auth/forgetpassword/verification_code_reset_password.dart';

class VerificationCodeResetPasswordController extends GetxController
{
  late String verificationCode;

  String? email;

  VerificationCodeResetPasswordData verificationCodeRP = VerificationCodeResetPasswordData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  goToResetPassword(context,verificationCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verificationCodeRP.postData(
      email: email!,
      verificationCode: verificationCode,
    );
    print("======================================= $response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest)
    {
      if(response['status'] == true)
      {
        Get.off(ResetPasswordScreen(),
          arguments:
          {
            "email" : email,
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

  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }
}