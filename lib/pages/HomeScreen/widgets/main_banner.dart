import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../reusables/slider_container.dart';
import '../../../utils/constants/colors.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({
    super.key,
    required this.image,
    this.genre = 'Action/Sci-fi',
    this.showStack = true,
  });

  final String image;
  final String genre;
  final bool showStack;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.5,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: showStack
          ? Stack(
        children: [
          // Watch Now - Bottom Left
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SliderContainer(
                content: 'Watch Now',
                icon: Iconsax.direct_right,
                bg: AppColors.primary,
              ),
            ),
          ),

          // WishList - Bottom Right
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SliderContainer(
                content: 'WishList',
                icon: Iconsax.add,
                bg: AppColors.dark.withValues(alpha: 1),
              ),
            ),
          ),

          // Metadata Row - Centered
          Positioned(
            bottom: 90,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SliderContainer(
                  showIcon: false,
                  content: '2h29m',
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  bg: AppColors.dark.withValues(alpha: 1.5),
                ),
                const SizedBox(width: 12),
                SliderContainer(
                  showIcon: false,
                  content: genre,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  bg: AppColors.dark.withValues(alpha: 1.5),
                ),
                const SizedBox(width: 12),
                SliderContainer(
                  showIcon: false,
                  content: '2018',
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  bg: AppColors.dark.withValues(alpha: 1.5),
                ),
              ],
            ),
          ),
        ],
      )
          : const SizedBox(),
    );
  }
}
