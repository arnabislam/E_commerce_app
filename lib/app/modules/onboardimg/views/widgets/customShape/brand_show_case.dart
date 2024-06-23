import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rbrand_card.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rounded_container.dart';
import 'package:flutter/material.dart';

import '../../../../../../constant/colors.dart';
import '../../../../../../device/helper_function.dart';
import '../../../../../../utils/size.dart';
class rBrandShowCase extends StatelessWidget {
  const rBrandShowCase({
    super.key,
    required this.dark, required this.images,
  });

  final bool dark;
  final List<String>images;

  @override
  Widget build(BuildContext context) {
    return rRoundedContainer(
      padding:EdgeInsets.all(rSize.md),
      showBorder: true,
      backgroundColor: Colors.transparent,
      borderColor: rColors.darkGrey,
      margin: EdgeInsets.only(bottom: rSize.spaceBtwItems),
      child: Column(
        children: [rbrand_card(dark: dark, showBorder: false),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              images.map((image)=>brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),

    );
  }
}

Widget brandTopProductImageWidget(String image,context){
  return   Expanded(
    child: rRoundedContainer(height: 100,
      backgroundColor: TheHelperFunctions.isDarkMode(BuildContext, context)?rColors.light:rColors.disabledButton,
      margin: EdgeInsets.only(right: rSize.sm),
      padding: EdgeInsets.all(rSize.md),
      child: Image(image:AssetImage(image),fit: BoxFit.cover,),
    ),
  );
}