import '../../../../../core/class/crud.dart';
import '../../../end_points.dart';

class CheckEmailData
{
  Crud crud;

  CheckEmailData(this.crud);

  postData({
    required String email,
  }) async {
    var response = await crud.postData(
        url: AppLink.checkEmail,
        data:
        {
          "email" : email,
        });
    return response.fold((l) => l, (r) => r);
  }
}