import '../../../../../core/class/crud.dart';
import '../../../end_points.dart';

class ResetPasswordData
{
  Crud crud;

  ResetPasswordData(this.crud);

  postData({
    required String email,
    required String password,
  }) async {
    var response = await crud.postData(
        url: AppLink.resetPassword,
        data:
        {
          "email" : email,
          "password" : password,
        });
    return response.fold((l) => l, (r) => r);
  }
}