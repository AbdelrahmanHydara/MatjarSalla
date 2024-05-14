import '../../../../../core/class/crud.dart';
import '../../../end_points.dart';

class VerificationCodeResetPasswordData
{
  Crud crud;

  VerificationCodeResetPasswordData(this.crud);

  postData({
    required String email,
    required String verificationCode,
  }) async {
    var response = await crud.postData(
        url: AppLink.VerificationCodeResetPassword,
        data:
        {
          "email" : email,
          "code" : verificationCode,
        });
    return response.fold((l) => l, (r) => r);
  }
}