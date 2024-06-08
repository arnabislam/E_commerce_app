import 'package:flutter/material.dart';

import '../../../../../../constant/colors.dart';
import 'circular_container.dart';
class rPrimaryContainer extends StatelessWidget {
  const rPrimaryContainer({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(

        child: Container(
          padding: EdgeInsets.all(0),
          color: rColors.primary,
          child: SizedBox(
            height: 400,
            child: Stack(children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: rCircularWidget(backgroundColour: rColors.textWhite.withOpacity(0.1),)),
            Positioned(
                  top: 100,
                  right: -300,
                  child: rCircularWidget(backgroundColour: rColors.textWhite.withOpacity(0.1),)),
          child


            ],),
          ),

        ),
    );
  }
}