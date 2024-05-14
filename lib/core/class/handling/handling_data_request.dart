import 'package:flutter/material.dart';
import '../../../shared/components/components.dart';
import '../../constants/images.dart';
import '../status_request.dart';
import 'package:lottie/lottie.dart';

class HandlingDataRequest extends StatelessWidget
{
  final StatusRequest statusRequest;
  final Widget widget;

  const HandlingDataRequest({Key? key,
    required this.statusRequest,
    required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return statusRequest == StatusRequest.loading
        ? Center(child: myCircularProgressIndicator())
        : statusRequest == StatusRequest.offline
        ? Center(child: Lottie.asset(AppImageAssets.offline ,width: 250,height: 250))
        : statusRequest == StatusRequest.serverError
        ? Center(child: Lottie.asset(AppImageAssets.server ,width: 250,height: 250))
        : widget;
  }
}