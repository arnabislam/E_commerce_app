import 'package:e_commerce/constant/colors.dart';
import 'package:flutter/material.dart';
class rShadowStyle{
  static final verticalProductsDetails=BoxShadow(
    color: rColors.dark.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2)
  );
  static final horizontalhProductsDetails=BoxShadow(
    color: rColors.dark,
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2)
  );
}