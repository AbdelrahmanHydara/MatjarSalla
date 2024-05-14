import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/models/home_model.dart';
import '../../core/class/status_request.dart';
import '../../core/services/services.dart';
import '../../models/categories_model.dart';
import '../../models/change_favorite_model.dart';
import '../../models/favorite_model.dart';
import '../../shared/helper/end_points.dart';
import '../../shared/helper/remote/dio.dart';

class HomeController extends GetxController
{
  StatusRequest statusRequest = StatusRequest.none;

  MyServices myServices = Get.find();

  HomeModel? homeModel;

  Map<int, bool> carts = {};

  getHomeData() {
    statusRequest = StatusRequest.loading;
    update();

    DioHelper.getData(
        url: AppLink.home,
    ).then((value)
    {
      homeModel = HomeModel.fromJson(value.data);
      homeModel!.data.products.forEach((element)
      {
        favorites.addAll({
            element.id! : element.in_favorites!,
          });
      });
      statusRequest = StatusRequest.success;
      update();
    }).catchError((error)
    {
      print(error.toString());
      statusRequest = StatusRequest.offline;
      statusRequest = StatusRequest.error;
      statusRequest = StatusRequest.serverError;
      update();
    });

  }

  CategoriesModel? categoriesModel;

  getCategory() {
    statusRequest = StatusRequest.loading;
    update();

    DioHelper.getData(
      url: AppLink.categories,
    ).then((value)
    {
      categoriesModel = CategoriesModel.fromJson(value.data);
      statusRequest = StatusRequest.success;
      update();
    }).catchError((error)
    {
      print(error.toString());
      statusRequest = StatusRequest.offline;
      statusRequest = StatusRequest.error;
      statusRequest = StatusRequest.serverError;
      update();
    });

  }

  FavoriteModel? favoriteModel;

  getFavorite() {
    statusRequest = StatusRequest.loading;
    update();

    DioHelper.getData(
      url: AppLink.favorites,
      token: myServices.sharedPreferences.getString("token"),
    ).then((value)
    {
      categoriesModel = CategoriesModel.fromJson(value.data);
      statusRequest = StatusRequest.success;
      update();
    }).catchError((error)
    {
      print(error.toString());
      statusRequest = StatusRequest.offline;
      statusRequest = StatusRequest.error;
      statusRequest = StatusRequest.serverError;
      update();
    });

  }

  ChangeFavoriteModel? changeFavoriteModel;

  Map<int, bool> favorites = {};

  getChangeFavorite(int productId,context)
  {
    favorites[productId] = !favorites[productId]!;
    update();

    DioHelper.postData(
        url: AppLink.favorites,
        data:
        {
          'product_id': productId
        },
        token: myServices.sharedPreferences.getString("token"),
    ).then((value)
    {
      changeFavoriteModel = ChangeFavoriteModel.fromJson(value.data);
      if(!changeFavoriteModel!.status!)
      {
        favorites[productId] = !favorites[productId]!;
        AwesomeDialog(
          context: context,
          dialogType: DialogType.warning,
          animType: AnimType.rightSlide,
          title: '56'.tr,
          desc: changeFavoriteModel!.message,
        ).show();
      } else
      {
        getFavorite();
      }
      update();
    }).catchError((error)
    {
      print(error.toString());
      update();
    });
  }

  @override
  void onInit() {
    getHomeData();
    getCategory();
    getFavorite();
    super.onInit();
  }
}