import 'package:e_commerce/app/modules/checkout/views/checkout_view.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/circular_icon.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/product_title_text.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rRoundedImage.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rbrandtitletext_with_verified_icon.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../onboardimg/views/widgets/productscart/add_remove_button.dart';
import '../onboardimg/views/widgets/productscart/cart_item.dart';
import '../onboardimg/views/widgets/productscart/cart_item_checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(rSize.defaultSpace),
        child: rCartItemCheckout(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(rSize.defaultSpace),
        child:
            ElevatedButton(onPressed: () {Get.to(CheckoutView());}, child: Text("CheckOut \$25000")),
      ),
    );
  }
}

