import 'package:e_commerce/utils/appBarTheme.dart';
import 'package:e_commerce/utils/bottomSheetTheme.dart';
import 'package:e_commerce/utils/chipTheme.dart';
import 'package:e_commerce/utils/elevetedButtonTheme.dart';
import 'package:e_commerce/utils/textFrormFieldTheme.dart';
import 'package:e_commerce/utils/textTheme.dart';
import 'package:flutter/material.dart';
class rAppTheme{
  rAppTheme._();

  static ThemeData lightTheme=ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: rTextTheme.lightTextTheme,
    chipTheme: rChipTheme.lightChipTheme,
    bottomSheetTheme: rBottomSheetTheme.lightBottomSheetTheme,
    appBarTheme: rAppbarTheme.lightAppBarTheme,
    elevatedButtonTheme: rElevetedButtonTheme.lighteElevetedButtonTheme,
    inputDecorationTheme: rTextFormFieldTheme.lightTextFormFieldTheme
  );
  static ThemeData darkTheme=ThemeData(

    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: rTextTheme.darkTextTheme,
    chipTheme: rChipTheme.darkChipTheme,
    bottomSheetTheme: rBottomSheetTheme.darkBottomSheetTheme,
    appBarTheme: rAppbarTheme.darkAppBarTheme,
    elevatedButtonTheme: rElevetedButtonTheme.darkElevetedButtonTheme,
    inputDecorationTheme: rTextFormFieldTheme.darkTextFormFieldTheme
  );
}