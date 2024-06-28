import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/circular_container.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/product_title_text.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rRoundedImage.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rbrand_title_text.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rbrandtitletext_with_verified_icon.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../utils/shadows.dart';
import '../../../../../../utils/size.dart';
import 'circular_icon.dart';

class rProductCardVertical extends StatelessWidget {
  const rProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return GestureDetector(
      onTap: () {
        print("arnab");
      },
      child: Column(
        children: [
          Container(
            width: 180,
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              boxShadow: [rShadowStyle.verticalProductsDetails],
              borderRadius: BorderRadius.circular(rSize.productImageRadius),
              color: dark ? rColors.darkGrey : rColors.textWhite,
            ),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                rRoundedContainer(
                  height: 180,
                  padding: EdgeInsets.all(rSize.sm),
                  backgroundColor: dark ? rColors.textWhite : rColors.textWhite,
                  child: Stack(
                    children: [
                      const rRoundedImage(
                        imageUrl: "assets/images/product.jpg",
                      ),
                      Positioned(
                        top: 12,
                        left: 2,
                        child: rRoundedContainer(
                          padding: const EdgeInsets.symmetric(
                              vertical: rSize.xs, horizontal: rSize.sm),
                          radius: rSize.sm,
                          backgroundColor: rColors.secondary.withOpacity(0.8),
                          child: Text(
                            "25%",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .apply(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 0,
                          right: 0,
                          child: rCircularIcon(
                            dark: dark,
                            icon: Icons.heart_broken_rounded,
                            color: Colors.red,
                          ))
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left:rSize.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      rProductTitleText(
                        title: 'Black Hilfiger shoes',
                        smallSize: true,
                      ),
                      SizedBox(
                        height: rSize.spaceBtwItems / 2,
                      ),
                    RbrandTitleTextWithIcon(title: "Hilfiger"),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$35.5",
                      style: Theme.of(context).textTheme.headlineMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(rSize.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(rSize.productImageRadius))),
                      child: const SizedBox(
                          height: rSize.iconLg * 1.2,
                          width: rSize.iconLg * 1.2,
                          child: Center(
                              child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ))),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: rSize.sm,
          ),
        ],
      ),
    );
  }
}

