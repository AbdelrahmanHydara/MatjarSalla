import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/styles/theme/light/light_theme.dart';
import '../services/services.dart';

class MyLocaleController extends GetxController
{
  Locale? initialLanguage;

  MyServices myServices = Get.find();

  ThemeData appTheme = lightThemeEn;

  changeLang(String langCode)
  {
    Locale language = Locale(langCode);
    myServices.sharedPreferences.setString('lang', langCode);
    appTheme = langCode == 'ar' ? lightThemeAr : lightThemeEn;
    Get.updateLocale(language);
    Get.changeTheme(appTheme);
  }

  @override
  onInit()
  {
    var sharedPrefLang = myServices.sharedPreferences.get('lang');
    if(sharedPrefLang == 'ar')
    {
      initialLanguage = const Locale('ar');
      appTheme = lightThemeAr;
    } else if(sharedPrefLang == 'en')
    {
      initialLanguage = const Locale('en');
      appTheme = lightThemeEn;
    } else
    {
      initialLanguage = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}