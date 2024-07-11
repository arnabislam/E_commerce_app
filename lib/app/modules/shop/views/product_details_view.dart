import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/circular_icon.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rRoundedImage.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/section_heading.dart';
import 'package:e_commerce/app/modules/review/views/review_view.dart';
import 'package:e_commerce/app/modules/shop/views/product_meta_data.dart';
import 'package:e_commerce/app/modules/shop/views/rProductImageSlider.dart';
import 'package:e_commerce/app/modules/shop/views/rating_share.dart';
import 'package:e_commerce/app/modules/shop/views/rproduct_atribute_view.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/constant/imageString.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/appbar.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsView extends GetView {
  const ProductDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Scaffold(
        bottomNavigationBar: rBottomAddToCart(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //product image slider
              rProductImageSlider(),

              //product details

              Padding(
                padding: const EdgeInsets.only(
                    right: rSize.defaultSpace,
                    left: rSize.defaultSpace,
                    bottom: rSize.defaultSpace),
                child: Column(
                  //rating & share button
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    rRatingShare(),
                    rProductMetaData(),
                    //Atribute
                    rProductAtributeView(),

                    const SizedBox(
                      height: rSize.spaceBtwSections,
                    ),

                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Checkout"))),
                    const SizedBox(
                      height: rSize.spaceBtwSections,
                    ),

                    const rSectionHeading(
                      title: "Description",
                      showActionbutton: false,
                    ),
//readmoreText from pub.deb
                    const SizedBox(
                      height: rSize.spaceBtwItems,
                    ),

                    const ReadMoreText(
                      "This is a product Description for new bluenike sleeves less vest.There are more things that can be added but i am the wrong people for this alignment  ",
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "Show more",
                      trimExpandedText: "show Less",
                      moreStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                    ),

                    Divider(),

                    const SizedBox(
                      height: rSize.spaceBtwItems,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const rSectionHeading(
                          title: "Reviews (199)",
                          showActionbutton: false,
                        ),
                        IconButton(
                          onPressed: () {
                            Get.to(ReviewView());
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class rBottomAddToCart extends StatelessWidget {
  const rBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: rSize.defaultSpace, vertical: rSize.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? rColors.darkGrey : rColors.light,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(rSize.cardRadiusLg),
              topLeft: Radius.circular(rSize.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const rCircularIcon(
                icon: Icons.exposure_minus_1,
                height: 40,
                width: 40,
                color: Colors.white,
                backgroundColor: Colors.grey,
              ),
              const SizedBox(
                width: rSize.spaceBtwItems,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: rSize.spaceBtwItems,
              ),
              const rCircularIcon(
                icon: Icons.add,
                height: 40,
                width: 40,
                color: Colors.white,
                backgroundColor: Colors.black,
              ),
            ],
          ),
          const SizedBox(
            width: rSize.spaceBtwItems,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(rSize.md),
                  backgroundColor: rColors.Black,
                  side: const BorderSide(color: Colors.black)),
              child: const Text("Add to cart"))
        ],
      ),
    );
  }
}
