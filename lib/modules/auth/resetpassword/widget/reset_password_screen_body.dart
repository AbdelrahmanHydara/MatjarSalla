import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/resetpassword/reset_password_controller.dart';
import '../../../../core/class/handling/handling_data_request.dart';
import '../../widget/custom_material_button_auth.dart';
import '../../widget/custom_text_body.dart';
import '../../widget/custom_text_head.dart';
import 'custom_text_form_field_reset_password.dart';

class ResetPasswordScreenBody extends GetView<ResetPasswordController>
{
  const ResetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GetBuilder<ResetPasswordController>(
      builder: (controller) => HandlingDataRequest(
        statusRequest: controller.statusRequest,
        widget: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children:
            [
              const SizedBox(
                height: 34,
              ),
              CustomTextHead(
                  text: '45'.tr),
              const SizedBox(
                height: 10,
              ),
              CustomTextBody(
                  text: '46'.tr),
              CustomTextFormFieldResetPassword(),
              CustomMaterialButtonAuth(
                text: '34'.tr,
                onTap: ()
                {
                  controller.goToSuccessResetPassword(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
