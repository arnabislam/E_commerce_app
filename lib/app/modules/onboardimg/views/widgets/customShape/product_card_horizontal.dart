import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/product_title_text.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rRoundedImage.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rbrand_title_text.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rbrandtitletext_with_verified_icon.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/app/modules/shop/views/product_price_text.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/utils/shadows.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import '../../../../../../device/helper_function.dart';
import 'circular_icon.dart';

class rProductCardHoirizontal extends StatelessWidget {
  const rProductCardHoirizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Container(
      margin: EdgeInsets.only(left: rSize.md),
      height: 310,
      decoration: BoxDecoration(
        // boxShadow: [rShadowStyle.horizontalhProductsDetails],
        borderRadius: BorderRadius.circular(rSize.productImageRadius),
        color: dark ? rColors.darkGrey : Colors.grey.shade50,
      ),
      child: Row(
        children: [
          SizedBox(width: rSize.sm,),
          rRoundedContainer(
            height: 120,
            padding: EdgeInsets.all(rSize.sm),
            backgroundColor: dark ? rColors.prinmarybackground : rColors.light,
            child: Stack(
              children: [
                const SizedBox(
                    height: 120,
                    width: 120,
                    child: rRoundedImage(
                      imageUrl: "assets/images/product.jpg",
                      applyImageRadius: true,
                    )),
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
                const Positioned(
                    top: 0,
                    right: 0,
                    child: rCircularIcon(
                      height: 35,
                      width: 35,
                      icon: Icons.heart_broken_rounded,
                      color: Colors.red,
                      size: 20,
                    ))
              ],
            ),
          ),
          SizedBox(
            width: 172,


            child: Padding(
              padding: const EdgeInsets.only(left: rSize.sm,top: rSize.md),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: rSize.sm),
                      rProductTitleText(
                        title: "Green Nike Half Sleeves shirt ",
                        smallSize: true,
                      ),
                      SizedBox(
                        height: rSize.spaceBtwItems / 2,
                      ),
                      rbrandTitleTextWithVerificationIcon(title: "Nike")
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: rProductPriceText(price: "254")),
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
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
