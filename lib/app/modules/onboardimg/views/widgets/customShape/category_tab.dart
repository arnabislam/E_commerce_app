import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/grid_layout.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/product_card_vertical.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../../constant/imageString.dart';
import '../../../../../../utils/size.dart';
import 'brand_show_case.dart';

class rCategoryTab extends StatelessWidget {
  const rCategoryTab({super.key, required this.dark});

  final bool dark;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(rSize.defaultSpace),
          child: Column(
            children: [
              rBrandShowCase(
                images: const [
                  rImageString.productImage1,
                  rImageString.productImage2,
                  rImageString.productImage3
                ],
                dark: dark,
              ),

              rBrandShowCase(
                images: const [
                  rImageString.productImage1,
                  rImageString.productImage2,
                  rImageString.productImage3
                ],
                dark: dark,
              ),

              const rSectionHeading(title: "You might like", buttonTitle: "view all"),
              const SizedBox(height: rSize.spaceBtwItems,),
              rGridLayout(itemCount: 4, itemBuilder: (_,index)=>const rProductCardVertical()),
            ],
          ),
        ),
      ],

    );
  }
}
