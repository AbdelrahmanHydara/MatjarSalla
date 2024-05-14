import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:get/get.dart';
import '../../../core/class/status_request.dart';
import '../../../core/functions/handling_data.dart';
import '../../../modules/auth/register/widget/success_register_screen.dart';
import '../../../shared/helper/remote/auth/register/verification_code_register.dart';

class VerificationCodeRegisterController extends GetxController
{
  late String verificationCode;

  String? email;

  StatusRequest statusRequest = StatusRequest.none;

  VerificationCodeRegisterData verificationCodeRegisterData = VerificationCodeRegisterData(Get.find());

  goToSuccessRegister(context,verificationCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verificationCodeRegisterData.postData(
        email: email!,
        verificationCode: verificationCode,
    );
    print("======================================= $response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest)
      {
        if(response['status'] == true)
        {
          Get.off(SuccessRegisterScreen());
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