import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/controller/home/home_controller.dart';
import 'package:matjar_salla/shared/components/my_conditional_builder.dart';
import '../../shared/components/components.dart';
import '../../shared/styles/text/text_style.dart';

class CategoriesScreen extends GetView<HomeController>
{
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GetBuilder<HomeController>(
        builder: (controller) => MyConditionalBuilder(
          condition: controller.categoriesModel != null,
          builder: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index) => Padding(
                padding: const EdgeInsets.all(20),
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children:
                      [
                        Image.network(
                          "${controller.categoriesModel!.data.data[index].image}",
                          width: 125,
                          height: 125,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "${controller.categoriesModel!.data.data[index].name}",
                          style: TextStyles.bold20,
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            separatorBuilder: (context,index) => Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20),
              child: myDivider(),
            ),
            itemCount: controller.categoriesModel!.data.data.length,
            ),
          fallback: myCircularProgressIndicator(),
        )
    );
  }
}
