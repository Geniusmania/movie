import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constants/colors.dart';
import '../../Personalized/movie_details.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key,});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(onTap:()=> Get.to(()=> MovieDetail()),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                height: size.height * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.darkergrey,
                  image: DecorationImage(
                    image: AssetImage('assets/img.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Flexible(
              child: Text(
                'Avengersndjvnsosklnvskln',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.apply(color: AppColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
