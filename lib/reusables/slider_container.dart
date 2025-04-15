import 'package:flutter/material.dart';
import '../utils/constants/colors.dart';

class SliderContainer extends StatelessWidget {
  const SliderContainer({
    super.key,
    required this.content,
    this.icon,
    required this.bg,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    this.showIcon = true,
    this.maxWidth = 300,
    this.iconColor = AppColors.white,
  });

  final String content;
  final IconData? icon;
  final Color bg;
  final EdgeInsetsGeometry padding;
  final bool showIcon;
  final double maxWidth;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: maxWidth),
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
          if (showIcon && icon != null)
            Icon(icon, color: iconColor),
          if (showIcon && icon != null)
            const SizedBox(width: 10),
          Flexible(
            child: Text(
              content,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.apply(color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}