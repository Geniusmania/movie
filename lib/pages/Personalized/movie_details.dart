import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:movie/pages/HomeScreen/widgets/main_banner.dart';
import 'package:movie/reusables/slider_container.dart';
import 'package:movie/store/api_controllers/movie_controller.dart';
import 'package:movie/utils/constants/colors.dart';
import 'package:readmore/readmore.dart';

import '../../models/movies_model.dart';
import '../../utils/constants/sizes.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({super.key, });
//final  Movies movies;
  @override
  Widget build(BuildContext context) {
    final productDetailController = MovieController.instance;
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainBanner(showStack: false, image: '', duration: '', year: '',),
            const SizedBox(height: AppSize.spaceBtwTtems),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Avengers: Infinity War',
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge!.apply(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Iconsax.star, color: Colors.white, size: 18),
                      const SizedBox(width: 12),
                      Text('7.0', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSize.spaceBtwTtems),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SliderContainer(
                  content: '2h29m',
                  bg: AppColors.darkergrey.withValues(alpha: 1.5),
                  showIcon: false,
                ),
                const SizedBox(width: AppSize.spaceBtwTtems),
                SliderContainer(
                  content: 'Action/Sci-fi',
                  bg: AppColors.darkergrey.withValues(alpha: 1.5),
                  showIcon: false,
                ),
                const SizedBox(width: AppSize.spaceBtwTtems),
                SliderContainer(
                  content: '2018',
                  bg: AppColors.darkergrey.withValues(alpha: 1.5),
                  showIcon: false,
                ),
              ],
            ),
            const SizedBox(height: AppSize.spaceBtwTtems),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ReadMoreText(
                'In a city gripped by fear, a mysterious vigilante rises from the shadows. As crime spirals out of control, he wages a one-man war against corruption. But when a hidden enemy from his past resurfaces, the fight becomes personal. Justice has a new name—and it’s coming with a vengeance.',
                style: TextStyle(color: Colors.white),
                trimMode: TrimMode.Line,
                trimLines: 2,
                colorClickableText: Colors.pink,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
