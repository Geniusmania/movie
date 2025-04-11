import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:movie/pages/Discover/discover_screen.dart';
import 'package:movie/pages/Favourite/favourite_screen.dart';
import 'package:movie/pages/HomeScreen/home_screen.dart';

import '../utils/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;


  void onItemTapped (int index){
    setState(() {
      currentIndex = index;
    });
  }

  Widget _buildBody() {
    switch (currentIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const DiscoverScreen();
      case 2:
        return const FavouriteScreen();
      default:
        return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.dark,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.black,
currentIndex: currentIndex,
        onTap: onItemTapped,
        selectedItemColor: AppColors.primary,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home),
            label: 'Home',
            backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.discover),
            label: 'Discover',
            backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.lovely),
            label: 'Favourite',
            backgroundColor: AppColors.primary,
          ),
        ],


      ),

      body: _buildBody(),
    );
  }
}
