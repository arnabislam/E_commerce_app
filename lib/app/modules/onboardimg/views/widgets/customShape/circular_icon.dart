import 'package:flutter/material.dart';

import '../../../../../../constant/colors.dart';

class rCircularIcon extends StatelessWidget {
  const rCircularIcon({
    super.key,
    required this.dark, this.height, this.width, this.size, required this.icon, this.color, this.backgroundColor, this.onPressed,
  });

  final bool dark;
  final double? height,width,size;
  final IconData icon;
  final Color?color;
  final Color?backgroundColor;
  final VoidCallback?onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(

        height: height,
        width: width,

        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
        color: dark?rColors.Black.withOpacity(0.9):rColors.darkGrey.withOpacity(0.9)),

        child:IconButton(onPressed: onPressed, icon: Icon(icon,color: color,size: size,)));
  }
}
