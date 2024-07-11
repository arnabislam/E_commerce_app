import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/circular_icon.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/product_title_text.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rRoundedImage.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rbrandtitletext_with_verified_icon.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import '../onboardimg/views/widgets/productscart/add_remove_button.dart';
import '../onboardimg/views/widgets/productscart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Padding(
        padding: EdgeInsets.all(rSize.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
            itemBuilder: (_, index) => const Column(
                  children: [
                    rCartItem(),
                    SizedBox(height: rSize.spaceBtwItems,),
                    Row(
                      ///add remove button
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [
                            SizedBox(width: 70,),
                            rProductQuantityWithAddRemoveButton(),
                          ],
                        ),
                        rProductTitleText(title: "\$2500")
                      ],
                    )

                  ],
                ),
            separatorBuilder: (_, __) => const SizedBox(
                  height: rSize.defaultSpace,
                ),
            itemCount: 14),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(rSize.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: Text("CheckOut \$25000")),
      ),
    );
  }
}




