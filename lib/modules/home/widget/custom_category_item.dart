import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/home/home_controller.dart';
import '../../../shared/styles/colors/app_colors.dart';

class CustomCategoryItem extends GetView<HomeController>
{
  const CustomCategoryItem({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)
        {
          return Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children:
              [
                Image.network(
                  "${controller.categoriesModel!.data.data[index].image}",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: 100,
                  color: AppColors.defaultColorB.withOpacity(.8),
                  child: Text(
                    "${controller.categoriesModel!.data.data[index].name}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.defaultColorW,
                    ),
                  ),
                ),
              ],
            );
        },
        separatorBuilder: (context,index) => SizedBox(
          width: 10,
        ),
        itemCount: controller.categoriesModel!.data.data.length,
      ),
    );
  }
}
