import 'package:flutter/material.dart';

import '../../../../constant/colors.dart';
import '../../../../constant/imageString.dart';
import '../../../../device/helper_function.dart';
import '../../../../utils/appbar.dart';
import '../../../../utils/size.dart';
import '../../onboardimg/views/widgets/customShape/circular_icon.dart';
import '../../onboardimg/views/widgets/customShape/rRoundedImage.dart';

class rProductImageSlider extends StatelessWidget {
  const rProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Container(
      color: dark ? rColors.darkGrey : rColors.light,
      child: Stack(
        children: [
          const SizedBox(
            height: 300,
            child: Padding(
              padding: EdgeInsets.all(rSize.productImageRadius * 2),
              child: Center(
                  child: Image(
                image: AssetImage(
                  "assets/images/product.jpg",
                ),
              )),
            ),
          ),

          //image slider

          Positioned(
            right: 0,
            bottom: 25,
            left: rSize.defaultSpace,
            child: SizedBox(
              height: 70,
              child: ListView.separated(
                itemCount: 6,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (_, index) => rRoundedImage(
                  imageUrl: rImageString.productImage1,
                  width: 80,
                  backgroundColor: dark ? rColors.dark : rColors.textWhite,
                  border: Border.all(color: rColors.primary),
                ),
                separatorBuilder: (_, __) => SizedBox(
                  width: rSize.spaceBtwItems,
                ),
              ),
            ),
          ),
          rAppBar(
            showBackArrow: true,
            actions: [
              rCircularIcon(
                icon: Icons.heart_broken_rounded,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    );
  }
}
