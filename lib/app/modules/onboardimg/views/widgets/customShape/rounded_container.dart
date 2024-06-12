import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';
class rRoundedContainer extends StatelessWidget {
  const rRoundedContainer({super.key, this.width, this.height,  this.radius=rSize.cardRadiusLg, this.child,  this.showBorder=false,
    this.borderColor=Colors.blueAccent,  this.backgroundColor=Colors.white, this.padding, this.margin});
final double ?width;
final double ?height;
final double radius;
final Widget ?child;
final bool showBorder;
final Color borderColor;
final Color backgroundColor;
final EdgeInsetsGeometry?padding;
final EdgeInsetsGeometry?margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(color: backgroundColor,
      borderRadius: BorderRadius.circular(radius),
      border: showBorder?Border.all(color: borderColor):null),
      child: child,
    );
  }
}
