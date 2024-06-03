import 'package:flutter/material.dart';

class rCheckBoxTheme{

  rCheckBoxTheme._();

  static CheckboxThemeData lighthCheckBoxTheme= CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  //   checkColor: MaterialStateProperty.resolveWith(states){
  //     if(states.contains(MaterialStates.selected)){
  //       return Colors.white;
  // }
  // }
  );
}