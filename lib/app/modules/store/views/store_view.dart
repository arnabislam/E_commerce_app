import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/search_container.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/section_heading.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/productscart/cart_menu_icon.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/appbar.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../onboardimg/views/widgets/customShape/r_circular_image.dart';
import '../controllers/store_controller.dart';

class StoreView extends StatefulWidget {
  const StoreView({super.key});

  @override
  State<StoreView> createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          rCartCounterIcon(
            onPressed: () {},
            iconColor: Colors.black,
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              expandedHeight: 440,
              backgroundColor: dark ? rColors.Black : rColors.textWhite,
              flexibleSpace: Padding(
                padding: EdgeInsets.all(rSize.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    const rSearchContainer(
                      text: "Searce in Store",
                      icon: Icons.search,
                      showBackground: false,
                      showBorder: true,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(
                      height: rSize.spaceBtwItems,
                    ),
                    rSectionHeading(
                      showActionbutton: true,
                      title: "Features Brand",
                      onPressed: () {},
                      buttonTitle: "view all",
                    ),
                    SizedBox(
                      height: rSize.spaceBtwItems,
                    ),
                    rRoundedContainer(
                      padding: EdgeInsets.all(rSize.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          rCircularImage(
                            backgroundColour: Colors.transparent,
                            image: 'assets/images/dressmaker.png',
                            overlayColor: dark ? Colors.white : Colors.black,
                            dark: dark,
                          ),
                          SizedBox(width: rSize.spaceBtwItems/2,),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
