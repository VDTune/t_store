import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

/// Custom Circular Icon với background color
/// Các thuộc tính:
/// Container [width], [height], [backgrondColor]
/// Icon [size], [color], [onPressed]

class TCirculerIcon extends StatelessWidget {
  const TCirculerIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    required this.icon,
    this.backgroundColor,
    this.onPressed,
    this.color,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? backgroundColor;
  final Color? color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? TColors.black.withOpacity(0.9)
                : TColors.white.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}