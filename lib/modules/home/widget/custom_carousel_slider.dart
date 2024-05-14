import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/controller/home/home_controller.dart';

class CustomCarouselSlider extends GetView<HomeController>
{
  const CustomCarouselSlider({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CarouselSlider.builder(
      itemCount: controller.homeModel!.data.banners.length,
      itemBuilder: (context, index, realIndex)
      {
        return Image(
          image: NetworkImage("${controller.homeModel!.data.banners[index].image}"),
          width: double.infinity,
          fit: BoxFit.cover,
        );
      },
      options: CarouselOptions(
        scrollDirection: Axis.horizontal,
        height: 250,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(seconds: 1),
        autoPlayCurve: Curves.bounceIn,
        viewportFraction: 1,
      ),
    );
  }
}

