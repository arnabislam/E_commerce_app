import 'package:e_commerce/constant/colors.dart';
import 'package:flutter/material.dart';

class rChipTheme{
  rChipTheme._();


  static ChipThemeData lightChipTheme =ChipThemeData(
   disabledColor: rColors.textSecondary.withOpacity(0.4),
    labelStyle: TextStyle(color: rColors.Black),
    selectedColor: rColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme =ChipThemeData(
    disabledColor: rColors.darkGrey.withOpacity(0.4),
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: rColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
    checkmarkColor: Colors.white,
  );
}
