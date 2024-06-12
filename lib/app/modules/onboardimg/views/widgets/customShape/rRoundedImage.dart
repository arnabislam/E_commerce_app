import 'package:flutter/material.dart';

import '../../../../../../utils/size.dart';
class rRoundedImage extends StatelessWidget {
  const rRoundedImage({
    super.key, required this.imageUrl,
    this.height,
    this.width,
     this. applyImageRadius=true,
     this.backgroundColor=Colors.white,
    this.border,
    this.fit,
     this.isNetworkImage=false,
    this.onPressed,
     this.borderRadius=rSize.md,



  });
  final String imageUrl;
  final double? height,width;
  final bool applyImageRadius;
  final Color backgroundColor;
  final BoxBorder?border;
  final BoxFit?fit;
  final bool isNetworkImage;
  final VoidCallback?onPressed;
  final double borderRadius;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius),border: border,color: backgroundColor

        ),
        child: ClipRRect(
          borderRadius:applyImageRadius? BorderRadius.circular(borderRadius):BorderRadius.zero,
          child: Image(image: isNetworkImage?NetworkImage(imageUrl):AssetImage(imageUrl)as ImageProvider,fit: fit,),
        ),
      ),
    );
  }
}