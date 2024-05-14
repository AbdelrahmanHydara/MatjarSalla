import 'package:flutter/material.dart';
import '../../../shared/components/components.dart';
import '../../constants/images.dart';
import '../status_request.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget
{
  final StatusRequest statusRequest;
  final Widget widget;

  const HandlingDataView({Key? key, required this.statusRequest, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return statusRequest == StatusRequest.loading
        ? Center(child: myCircularProgressIndicator())
        : statusRequest == StatusRequest.offline
        ? Center(child: Lottie.asset(AppImageAssets.offline ,width: 250,height: 250))
        : statusRequest == StatusRequest.serverError
        ? Center(child: Lottie.asset(AppImageAssets.server ,width: 250,height: 250))
        : statusRequest == StatusRequest.error
        ? Center(child: Lottie.asset(AppImageAssets.noData ,width: 250,height: 250))
        : widget;
  }
}