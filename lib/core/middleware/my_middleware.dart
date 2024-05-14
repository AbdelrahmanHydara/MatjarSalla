import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/services.dart';

class MyMiddleware extends GetMiddleware
{
  MyServices myServices = Get.find();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if(myServices.sharedPreferences.getString("next") == "2")
    {
      return const RouteSettings(
        name: '/layout',
      );
    }
    if(myServices.sharedPreferences.getString("next") == "1")
    {
      return const RouteSettings(
        name: '/login',
      );
    }
    return null;
  }
}