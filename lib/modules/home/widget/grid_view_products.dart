import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/controller/home/home_controller.dart';
import '../../../shared/styles/colors/app_colors.dart';
import '../../../shared/styles/text/text_style.dart';

class GridViewProducts extends GetView<HomeController>
{
  const GridViewProducts({super.key});

  @override
  Widget build(BuildContext context)
  {
    var model = controller.homeModel!.data.products;
    
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.65,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: List.generate(
          model.length,
          (index) => Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.1),
                  offset: Offset(1, 1),
                  blurRadius: 50,
                  spreadRadius: 20,
                ),
              ],
            ),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:
                  [
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children:
                      [
                        Image.network(
                          "${model[index].image}",
                          height: 170,
                          width: 170,
                        ),
                        if(model[index].discount != 0)
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
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Text(
                          "${model[index].name}",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                            height: 1.34,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children:
                          [
                            Text(
                              "${model[index].price.round()}",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.defaultColor,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            if(model[index].discount != 0)
                             Text(
                              "${model[index].old_price.round()}",
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
                                backgroundColor: controller.favorites[model[index].id]! ?
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
