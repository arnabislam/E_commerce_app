import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/app/modules/all_product/views/all_product_view.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/curved_edges.dart';
import 'package:e_commerce/app/modules/subcatgories/views/subcatgories_view.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/appbar.dart';
import 'package:e_commerce/utils/shadows.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../../onboardimg/views/widgets/customShape/caro_slider.dart';
import '../../onboardimg/views/widgets/customShape/circular_container.dart';
import '../../onboardimg/views/widgets/customShape/grid_layout.dart';
import '../../onboardimg/views/widgets/customShape/primaryHeader.dart';
import '../../onboardimg/views/widgets/customShape/product_card_vertical.dart';
import '../../onboardimg/views/widgets/customShape/rRoundedImage.dart';
import '../../onboardimg/views/widgets/customShape/search_container.dart';
import '../../onboardimg/views/widgets/customShape/section_heading.dart';
import '../../onboardimg/views/widgets/customShape/vertical_image_text.dart';
import '../../onboardimg/views/widgets/productscart/cart_menu_icon.dart';
import '../controllers/home_controller.dart';
import 'home_appbar_view.dart';

//for splash screen
//run trhis command     " flutter pub run flutter_native_splash:create --path=splash.yaml"
//remove solash   "flutter pub run flutter _native_splash remove"

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            rPrimaryContainer(
                child: Column(
              children: [
                rHomeAppBar(),
                const SizedBox(
                  height: rSize.spaceBtwSections,
                ),
                const rSearchContainer(
                  text: 'Seacrh in shop',
                  icon: Icons.search,
                ),
                const SizedBox(
                  height: rSize.spaceBtwSections,
                ),
                Padding(
                  padding: EdgeInsets.only(left: rSize.defaultSpace),
                  child: Column(
                    children: [
                      const rSectionHeading(
                        title: 'Default Categories ',
                        showActionbutton: true,
                        textColor: Colors.white,
                        buttonTitle: 'view all',
                      ),
                      const SizedBox(
                        height: rSize.spaceBtwItems,
                      ),
                      SizedBox(
                        height: 80,

                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 15,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return rVerticalImageText(
                                image: 'assets/images/sneakers.png',
                                title: "shoes",
                                onpressed: () {
                                  Get.to(SubcatgoriesView());
                                },
                                backgrondColor: Colors.blue,
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(rSize.defaultSpace),
              child: Column(
                children: [
                  const rCaroSlider(
                    banners: [
                      "assets/images/slider.jpg",
                      "assets/images/slider1.jpg",
                      "assets/images/slider2.jpg"
                    ],
                  ),
                  const SizedBox(
                    height: rSize.spaceBtwSections,
                  ),
                   rSectionHeading(
                    title: "Popular Products",
                    buttonTitle: "view all",
                    textColor: Colors.black,
                    showActionbutton: true,
                    onPressed: (){
                      Get.to(AllProductView());
                    },
                  ),
                  rGridLayout(itemCount: 4, itemBuilder: (_,index ) =>rProductCardVertical()),

                  //  rProductCardVertical()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

