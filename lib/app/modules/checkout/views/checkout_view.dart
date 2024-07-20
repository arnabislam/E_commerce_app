import 'package:e_commerce/app/modules/auth/views/success_screenl_view.dart';
import 'package:e_commerce/app/modules/checkout/billing_ammount_section.dart';
import 'package:e_commerce/app/modules/checkout/billing_paymemt_section.dart';
import 'package:e_commerce/app/modules/home/views/navigation_menu_view.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/productscart/cart_item_checkout.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/appbar.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../onboardimg/views/widgets/productscart/coupon_code.dart';
import '../billing-address_section.dart';

import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  const CheckoutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(rSize.defaultSpace),
            child: Column(
              children: [
                rCartItemCheckout(
                  showAddRemoveButton: false,
                ),
                SizedBox(
                  height: rSize.spaceBtwSections,
                ),
                rCouponCode(),
                SizedBox(
                  height: rSize.spaceBtwSections,
                ),
                rRoundedContainer(
                  padding: EdgeInsets.all(rSize.sm),
                  showBorder: true,
                  backgroundColor: dark ? rColors.dark : Colors.white,
                  child: Column(
                    children: [
                      rBillingAmountSection(),
                      SizedBox(
                        height: rSize.spaceBtwItems,
                      ),
                      Divider(),
                      SizedBox(
                        height: rSize.spaceBtwItems,
                      ),
                      rBillingPaymentSection(),
                      SizedBox(
                        height: rSize.spaceBtwItems,
                      ),
                      rBillingAddressSection(),
                    ],
                  ),
                )
              ],
            )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(rSize.defaultSpace),
        child: ElevatedButton(
            onPressed: () {
              Get.to(rSuccessScreen(
                  image: "assets/images/success.jpg",
                  title: "Payment Success",
                  subtitle: "Your Item Will be shift soon",
                  onPressed: () {
                    Get.offAll(NavigationMenuView());
                  },
                  showButton: true));
            },
            child: Text("CheckOut \$25000")),
      ),
    );
  }
}
