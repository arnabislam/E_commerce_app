import 'package:e_commerce/app/modules/brand/views/brandProducts.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/grid_layout.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/section_heading.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/sortable_product.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../onboardimg/views/widgets/customShape/rbrand_card.dart';
class Allbrand extends StatelessWidget {
  const Allbrand({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=TheHelperFunctions.isDarkMode(BuildContext, context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Brand"),

      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(rSize.defaultSpace),
        child: Column(
          children: [
            rSectionHeading(title: "Brands"),
            SizedBox(height: rSize.spaceBtwItems,),

            rGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (_, index) {
                  return rbrand_card(
                    dark: dark,
                    showBorder: true,
                    onTap: ()=>Get.to(()=>Brandproducts()),
                  );
                })

          ],
        ),
        ),
      ),
    );
  }
}
