import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/pages/HomeScreen/widgets/movie_card.dart';
import 'package:movie/pages/HomeScreen/widgets/slider_widget.dart';
import 'package:movie/pages/Personalized/all_page.dart';
import '../../reusables/movie_grid.dart';
import '../../reusables/section_heading.dart';
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
            SliderWidget(),

            SectionHeading(title: 'Continue Watch', more: 'See more',onTap: ()=> Get.to(()=> AllPage()), ),

            SizedBox(
              height: size.height,
              child: MovieGridLayout(),
            ),
          ],
        ),
      ),
    );
  }
}



