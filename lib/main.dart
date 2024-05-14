import 'package:flutter/material.dart';
import 'package:matjar_salla/core/services/services.dart';
import 'package:matjar_salla/shared/helper/remote/dio.dart';
import 'core/constants/routes.dart';
import 'core/localization/change_locale.dart';
import 'core/localization/translation.dart';
import 'package:get/get.dart';
import 'shared/bindings/initial_bindings.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  await DioHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    MyLocaleController controller = Get.put(MyLocaleController());

    return GetMaterialApp(
      theme: controller.appTheme,
      locale: controller.initialLanguage,
      getPages: routes,
      initialBinding: InitialBindings() ,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

