import 'package:get/get.dart';

validInput({
  required String value,
  required String type,
  required int min,
  required int max,
})
{
  if(value.isEmpty)
  {
    return "49".tr;
  }

  if(type == '22'.tr)
  {
    if(!GetUtils.isUsername(value))
    {
      return '50'.tr;
    }
  }

  if(type == '18'.tr)
  {
    if(!GetUtils.isEmail(value))
    {
      return '51'.tr;
    }
  }

  if(type == '20'.tr)
  {
    if(!GetUtils.isNum(value))
    {
      return '52'.tr;
    }
  }

  if(type == '24'.tr)
  {
    if(!GetUtils.isPhoneNumber(value))
    {
      return '53'.tr;
    }
  }

  if(value.length < min)
  {
    return "54".tr+"$min";
  }

  if(value.length > max)
  {
    return "55".tr+"$max";
  }

}