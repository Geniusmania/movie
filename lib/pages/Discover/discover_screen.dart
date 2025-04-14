import 'package:flutter/material.dart';
import 'package:movie/utils/constants/colors.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: Center(child: Text('Discover Screen')),
    );
  }
}
