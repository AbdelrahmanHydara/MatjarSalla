import '../../../../../core/class/crud.dart';
import '../../../end_points.dart';

class VerificationCodeRegisterData
{
  Crud crud;

  VerificationCodeRegisterData(this.crud);

  postData({
    required String email,
    required String verificationCode,
  }) async {
    var response = await crud.postData(
        url: AppLink.VerificationCodeRegister,
        data:
        {
          "code" : verificationCode,
          "email" : email,
        });
    return response.fold((l) => l, (r) => r);
  }
}