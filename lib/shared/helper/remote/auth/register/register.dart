import '../../../../../core/class/crud.dart';
import '../../../end_points.dart';

class RegisterData
{
  Crud crud;

  RegisterData(this.crud);

  postData({
    required String username,
    required String password,
    required String email,
    required String phone,
  }) async {
    var response = await crud.postData(
        url: AppLink.register,
        data:
        {
          "name" : username,
          "password" : password,
          "email" : email,
          "phone" : phone,
        });
    return response.fold((l) => l, (r) => r);
  }
}