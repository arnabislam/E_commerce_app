import 'package:flutter/material.dart';

import '../../../../../../constant/colors.dart';
import '../../../../../../device/helper_function.dart';

class rCircularIcon extends StatelessWidget {
  const rCircularIcon({
    super.key,
    this.height,
    this.width,
    this.size,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? height, width, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor != null
              ? backgroundColor!
              : dark
                  ? rColors.Black.withOpacity(0.9)
                  : rColors.darkGrey.withOpacity(0.9),
        ),
        child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: color,
              size: size,
            )));
  }
}
