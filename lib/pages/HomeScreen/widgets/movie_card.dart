import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/models/movies_model.dart';
import '../../../utils/constants/colors.dart';
import '../../Personalized/movie_details.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movies, this.onTap,});
final Movies movies;
final  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(onTap:onTap,
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
                    image: NetworkImage(movies.backgroundImageOriginal),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Flexible(
              child: Text(
                movies.title,
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
