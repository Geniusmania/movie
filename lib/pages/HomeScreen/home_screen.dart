import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie/pages/HomeScreen/widgets/main_banner.dart';
import 'package:movie/utils/helpers/helper_functions.dart';

import '../../reusables/containers.dart';
import '../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                CarouselSlider(
                  items: [
                    MainBanner(image: 'assets/img.png'),
                    MainBanner(image: 'assets/img_1.png'),
                  ],
                  options: CarouselOptions(
                    // height: size.height * .5,
                    autoPlay: true,
                  ),
                ),

                const SizedBox(height: 20),
                Row(
                  children: [
                    for (int i = 0; i < 3; i++) const CustomContainers(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
