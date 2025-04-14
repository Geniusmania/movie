import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../reusables/containers.dart';
import '../../../reusables/slider_container.dart';
import '../../../utils/constants/colors.dart';
import '../controllers/main_banner_controller.dart';
import 'main_banner.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainBannerController());
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        CarouselSlider(

          items: [
            MainBanner(image: 'assets/img.png'),
            MainBanner(image: 'assets/img_1.png'),
          ],
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
              for (int i = 0; i < 2; i++)
                CustomContainers(
                  height: 8,
                  color:
                      controller.carouselCurrentIndex.value == i
                          ? AppColors.primary
                          : Colors.white,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
