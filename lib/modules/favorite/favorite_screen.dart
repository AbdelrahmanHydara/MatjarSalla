import 'package:flutter/material.dart';
import 'package:matjar_salla/shared/components/components.dart';
import '../../controller/home/home_controller.dart';
import 'package:get/get.dart';
import '../../shared/components/my_conditional_builder.dart';
import '../../shared/styles/colors/app_colors.dart';
import '../../shared/styles/text/text_style.dart';

class FavoriteScreen extends GetView<HomeController>
{
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    var model = controller.favoriteModel!.data.data;

    return GetBuilder<HomeController>(
        builder: (controller) => MyConditionalBuilder(
          condition: controller.favoriteModel != null,
          builder: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index) => Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 120,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:
                  [
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children:
                      [
                        Image.network(
                          "${model[index].product!.image}",
                          height: 120,
                          width: 120,
                        ),
                        if(model[index].product!.discount != 0)
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            color: Colors.red,
                            child: Text(
                              "DISCOUNT",
                              style: TextStyles.regular12,
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Text(
                            "${model[index].product!.name}",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              height: 1.34,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children:
                            [
                              Text(
                                "${model[index].product!}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.defaultColor,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              if(model[index].product!.discount != 0)
                                Text(
                                  "${model[index].product!}",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.defaultColorG,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              const Spacer(),
                              IconButton(
                                icon: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: controller.favorites[model[index].product!.id]! ?
                                  Colors.teal : Colors.grey,
                                  child: Icon(
                                    Icons.favorite_outline,
                                    size: 20,
                                    color: AppColors.defaultColorW,
                                  ),
                                ),
                                onPressed: ()
                                {
                                  controller.getChangeFavorite(model[index].id!,context);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            separatorBuilder: (context,index) => myDivider(),
            itemCount: model!.length,
          ),
          fallback: myCircularProgressIndicator(),
        )
    );
  }
}
