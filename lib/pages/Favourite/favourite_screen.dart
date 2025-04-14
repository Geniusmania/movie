import 'package:flutter/material.dart';
import 'package:movie/utils/constants/colors.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: Center(child: Text('Favourite Screen'),),
    );
  }
}
