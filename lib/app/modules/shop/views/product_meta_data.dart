import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/product_title_text.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/r_circular_image.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rbrand_title_text.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rbrandtitletext_with_verified_icon.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/app/modules/shop/views/product_price_text.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/constant/enums.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

class rProductMetaData extends StatelessWidget {
  const rProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //price and sale price
        Row(
          children: [
            rRoundedContainer(
              radius: rSize.sm,
              backgroundColor: rColors.secondary.withOpacity(0.5),
              padding: const EdgeInsets.symmetric(
                  horizontal: rSize.sm, vertical: rSize.xs),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Colors.black),
              ),
            ),

            SizedBox(
              width: rSize.spaceBtwItems,
            ),

            //price

            Text(
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            SizedBox(width: rSize.spaceBtwItems,),
            rProductPriceText(price: '175',isLarge: true,),
          ],
        ),
        SizedBox(height: rSize.spaceBtwItems/1.5,),

        ///title
     rProductTitleText(title: "Green Nike sports Shoe"),
        SizedBox(height: rSize.spaceBtwItems/1.5,),

        ///stock status
        Row(
          children: [
            rProductTitleText(title: 'Status'),
            SizedBox(width: rSize.spaceBtwItems,),
            Text("In Stock",style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),

        SizedBox(height: rSize.spaceBtwItems/1.5,),

        ///brand
Row(
  children: [
    rCircularImage(dark: dark, image: "assets/images/sport-shoe.png",width: 32,height: 32,overlayColor: dark?Colors.white:Colors.black,),
    rbrandTitleTextWithIcon(title: "Nike",brandTextSize: TextSizes.medium,),
  ],
)
      ],
    );
  }
}


