import 'package:flutter/material.dart';
import '../utils/constants/colors.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
     this.more,
     this.showActionButton = true, this.onTap,
  });

  final String title;
  final String?  more;
  final bool showActionButton;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.apply(color: AppColors.white),
          ),
          Spacer(),
         showActionButton? TextButton(
            onPressed: onTap,
            child: Text(
              more!,
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.apply(color: AppColors.primary),
            ),
          ): SizedBox(),
        ],
      ),
    );
  }
}
