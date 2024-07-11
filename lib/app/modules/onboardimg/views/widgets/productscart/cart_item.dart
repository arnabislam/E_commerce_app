import 'package:flutter/material.dart';

import '../../../../../../constant/colors.dart';
import '../../../../../../device/helper_function.dart';
import '../../../../../../utils/size.dart';
import '../customShape/product_title_text.dart';
import '../customShape/rRoundedImage.dart';
import '../customShape/rbrandtitletext_with_verified_icon.dart';
class rCartItem extends StatelessWidget {
  const rCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        rRoundedImage(
          imageUrl: "assets/images/product.jpg",
          height: 60,
          width: 60,
          backgroundColor: TheHelperFunctions.isDarkMode(
              BuildContext, context)?rColors.darkGrey:rColors.light,
        ),
        SizedBox(width: rSize.spaceBtwItems,),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              rbrandTitleTextWithVerificationIcon(title: "Nike"),
              Flexible(child: rProductTitleText(title: "Black Sports Shoes ",maxlines: 1,)),
              Text.rich(TextSpan(children: [
                TextSpan(text: 'Color ',style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: 'Green ',style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(text: 'Size ',style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: 'Uk 08',style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        ),

      ],
    );
  }
}