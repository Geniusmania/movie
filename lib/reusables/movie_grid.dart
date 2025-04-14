import 'package:flutter/material.dart';
import '../pages/HomeScreen/widgets/movie_card.dart';

class MovieGridLayout extends StatelessWidget {
  const MovieGridLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8, // Adjust as needed
      ),
      itemBuilder:
          (_, index) => MovieCard(),
    );
  }
}