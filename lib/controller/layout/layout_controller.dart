import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../modules/categories/categories_screen.dart';
import '../../modules/favorite/favorite_screen.dart';
import '../../modules/home/home_screen.dart';
import '../../modules/settings/settings_screen.dart';

class LayoutController extends GetxController
{

  List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    FavoriteScreen(),
    SettingsScreen(),
  ];

  List<String> titles = [
    "Home",
    "Categories",
    "Favorite",
    "Settings",
  ];

  List<IconData> icons = [
    Icons.home_filled,
    Icons.apps,
    Icons.favorite,
    Icons.settings,
  ];

  int currentIndex = 0;

  changeBottomNavBar(int index) {
    currentIndex = index;
    update();
  }


}