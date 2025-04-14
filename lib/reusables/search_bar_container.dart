import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../utils/constants/colors.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkergrey,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        cursorColor: AppColors.primary,
        style: TextStyle(color: AppColors.white),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 12),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: Icon(
            Iconsax.search_favorite,
            color: Colors.white,
          ),
          isDense: true,
          hintText: 'Search anything',
          hintStyle: TextStyle(color: AppColors.white),
        ),
      ),
    );
  }
}
