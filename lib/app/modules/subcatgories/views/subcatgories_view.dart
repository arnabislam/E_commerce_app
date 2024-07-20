import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/product_card_horizontal.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/product_card_vertical.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rRoundedImage.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/section_heading.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/appbar.dart';
import '../controllers/subcatgories_controller.dart';

class SubcatgoriesView extends GetView<SubcatgoriesController> {
  const SubcatgoriesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sports'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(rSize.defaultSpace),
            child: Column(
              children: [
                //banner
                const rRoundedImage(
                  imageUrl: "assets/images/menshoes.jpg",
                  width: double.infinity,
                  applyImageRadius: true,
                ),
                SizedBox(
                  height: rSize.spaceBtwSections,
                ),
                Column(
                  children: [
                    rSectionHeading(
                      title: "Sports Shirts",
                      showActionbutton: true,
                    ),
                    SizedBox(
                      height: rSize.spaceBtwItems / 2,
                    ),
                    SizedBox(
                        height: 120,
                        child: ListView.separated(
                          itemBuilder: (context, index) => SizedBox(
                            height: rSize.spaceBtwItems,
                          ),
                          separatorBuilder: (context, index) =>
                              rProductCardHoirizontal(),
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                        ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ));
  }
}
