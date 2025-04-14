import 'package:flutter/material.dart';
import '../utils/constants/colors.dart';

class SliderContainer extends StatelessWidget {
  const SliderContainer({
    super.key,
    required this.content,
     this.icon,
    required this.bg,
  this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 10),  this.showIcon = true,
  });

  final String content;
  final IconData? icon;
  final Color bg;
  final EdgeInsetsGeometry? padding;

  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         showIcon? Icon(icon, color: AppColors.white):SizedBox(),
           SizedBox(width:showIcon? 10: null),
          Text(
            content,
            style: Theme.of(
              context,
            ).textTheme.labelLarge!.apply(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
