import 'package:flutter/material.dart';

import '../../../../../../constant/colors.dart';
import '../../../../../../utils/size.dart';

class rCircularImage extends StatelessWidget {
  const rCircularImage({
    super.key,
    required this.dark,
     this.height=56,
     this.width=56,
     this.padding=rSize.sm,
    this.overlayColor,
   this.backgroundColour=Colors.blue,
    this.isNetworkImage=false,
    required this.image,
    this.fit=BoxFit.cover,
  });

  final bool dark;
  final double height,width,padding;
  final Color ?overlayColor;
  final Color backgroundColour;
  final bool isNetworkImage;
  final String image;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: dark ? rColors.dark : rColors.prinmarybackground,
          borderRadius: BorderRadius.circular(100)),
      child: Image(image: isNetworkImage?NetworkImage(image):AssetImage(image),fit: fit,color: overlayColor,

    ));
  }
}