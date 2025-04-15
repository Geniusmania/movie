import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/models/movies_model.dart';
import 'package:movie/pages/Personalized/movie_details.dart';
import 'package:movie/store/api_controllers/movie_controller.dart';
import '../pages/HomeScreen/widgets/movie_card.dart';

class MovieGridLayout extends StatelessWidget {
  const MovieGridLayout({super.key});

  //final Movies movie;
  @override
  Widget build(BuildContext context) {
    final controller = MovieController.instance;
    return FutureBuilder(
      future: controller.fetchAllMovies(),
      builder: (_, snapshot) {
        final movies = snapshot.data;
        return GridView.builder(
          itemCount:
              controller.moviesList.length > 30
                  ? 30
                  : controller.moviesList.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8, // Adjust as needed
          ),
          itemBuilder:
              (_, index) => MovieCard(
                movies: movies![index],
                onTap: () => Get.to(() => MovieDetail()),
              ),
        );
      },
    );
  }
}
