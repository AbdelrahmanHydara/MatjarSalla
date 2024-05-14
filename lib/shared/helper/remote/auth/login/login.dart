import '../../../../../core/class/crud.dart';
import '../../../end_points.dart';

class LoginData
{
  Crud crud;

  LoginData(this.crud);

  postData({
    required String password,
    required String email,
  }) async {
    var response = await crud.postData(
        url: AppLink.login,
        data:
        {
          "password" : password,
          "email" : email,
        });
    return response.fold((l) => l, (r) => r);
  }
}