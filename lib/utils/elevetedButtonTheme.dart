import 'package:flutter/material.dart';
class rElevetedButtonTheme{
   rElevetedButtonTheme._();
   static final  lighteElevetedButtonTheme=ElevatedButtonThemeData(
     style:ElevatedButton.styleFrom(elevation: 0,
     foregroundColor: Colors.white,
     backgroundColor: Colors.blue,
       disabledBackgroundColor: Colors.grey,
       disabledForegroundColor: Colors.grey,
       side: const BorderSide(color: Colors.blue),
       padding: const EdgeInsets.symmetric(vertical: 18),
     textStyle: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
     ),
   );

   static final  darkElevetedButtonTheme=ElevatedButtonThemeData(
     style:ElevatedButton.styleFrom(elevation: 0,
     foregroundColor: Colors.white,
     backgroundColor: Colors.blue,
       disabledBackgroundColor: Colors.grey,
       disabledForegroundColor: Colors.grey,
       side: const BorderSide(color: Colors.blue),
       padding: const EdgeInsets.symmetric(vertical: 18),
     textStyle: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
     ),
   );
}