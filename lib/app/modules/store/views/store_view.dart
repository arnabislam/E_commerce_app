import 'package:e_commerce/app/modules/home/views/home_view.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/category_tab.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/search_container.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/section_heading.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/tabbar.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/productscart/cart_menu_icon.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/constant/enums.dart';
import 'package:e_commerce/constant/imageString.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/appbar.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../onboardimg/views/widgets/customShape/brand_show_case.dart';
import '../../onboardimg/views/widgets/customShape/grid_layout.dart';
import '../../onboardimg/views/widgets/customShape/r_circular_image.dart';
import '../../onboardimg/views/widgets/customShape/rbrand_card.dart';
import '../../onboardimg/views/widgets/customShape/rbrandtitletext_with_verified_icon.dart';
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
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios)),
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
                          text: "Search in Store",
                          icon: Icons.search,
                          showBackground: false,
                          showBorder: true,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: rSize.spaceBtwItems,
                        ),
                        rSectionHeading(
                          showActionbutton: true,
                          title: "Features Brand",
                          onPressed: () {},
                          buttonTitle: "view all",
                        ),
                        const SizedBox(
                          height: rSize.spaceBtwItems,
                        ),
                        rGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return rbrand_card(
                                dark: dark,
                                showBorder: true,
                              );
                            })
                      ],
                    ),
                  ),
                  bottom: const rTabBar(tabs: [
                    Tab(
                      child: Text("Sports "),
                    ),
                    Tab(
                      child: Text("Furniture"),
                    ),
                    Tab(
                      child: Text("Electronics "),
                    ),
                    Tab(
                      child: Text("Groceries "),
                    ),
                    Tab(
                      child: Text("Cloths "),
                    ),
                  ]))
            ];
          },
          body: TabBarView(children: [
            rCategoryTab(dark: dark),
            rCategoryTab(dark: dark),
            rCategoryTab(dark: dark),
            rCategoryTab(dark: dark),
            rCategoryTab(dark: dark),








          ]),
        ),
      ),
    );
  }
}
