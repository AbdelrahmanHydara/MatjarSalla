import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/controller/auth/register/register_controller.dart';
import '../../../../core/class/handling/handling_data_request.dart';
import '../../widget/custom_material_button_auth.dart';
import '../../widget/custom_text_body.dart';
import '../../widget/custom_text_head.dart';
import 'custom_text_button_register.dart';
import 'custom_text_form_field_register.dart';

class RegisterScreenBody extends StatelessWidget
{
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    Get.put(RegisterController());

    return GetBuilder<RegisterController>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children:
                [
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextHead(
                      text: '42'.tr),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextBody(
                      text: '16'.tr),
                  CustomTextFormFieldRegister(),
                  CustomMaterialButtonAuth(
                    text: '17'.tr,
                    onTap: ()
                    {
                      controller.register(context);
                    },
                  ),
                  CustomTextButtonRegister(),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
