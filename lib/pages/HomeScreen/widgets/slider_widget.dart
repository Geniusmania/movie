import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../reusables/containers.dart';
import '../../../store/api_controllers/movie_controller.dart';
import '../../../utils/constants/colors.dart';
import '../controllers/main_banner_controller.dart';
import 'main_banner.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainBannerController());
    final bannerController = Get.put(MovieController());
    final size = MediaQuery.of(context).size;
    return Obx(
      () => Column(
        children: [
          CarouselSlider(
            items:
                bannerController.newMovies.map((newMovies) {
                  return MainBanner(
                    image: newMovies.backgroundImage,
                    genre: newMovies.title,
                    year: newMovies.year.toString(),
                    duration: newMovies.language,
                  );
                }).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              initialPage: controller.carouselCurrentIndex.value,
              onPageChanged:
                  (index, _) => controller.updatePageIndicator(index),
              height: size.height * .5,
              //autoPlay: true,
            ),
          ),

          const SizedBox(height: 15),
          Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < bannerController.moviesList.length; i++)
                  CustomContainers(
                    height: 3,
                    color:
                        controller.carouselCurrentIndex.value == i
                            ? AppColors.primary
                            : Colors.white,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
