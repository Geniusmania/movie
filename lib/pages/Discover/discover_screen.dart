import 'package:flutter/material.dart';
import 'package:movie/pages/HomeScreen/home_screen.dart';
import '../../reusables/movie_grid.dart';
import '../../reusables/search_bar_container.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: AppSize.spaceBtwSections),
              SearchContainer(),
              const SizedBox(height: AppSize.spaceBtwTtems),
              SizedBox(
                  height: size.height,
                  child: MovieGridLayout())
            ],
          ),
        ),
      ),
    );
  }
}

