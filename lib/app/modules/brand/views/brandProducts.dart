import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rbrand_card.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/sortable_product.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';
class Brandproducts extends StatelessWidget {
  const Brandproducts({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=TheHelperFunctions.isDarkMode(BuildContext, context);
    return Scaffold(
      appBar: AppBar(title: Text("Nike"),),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(rSize.defaultSpace),

        child: Column(
          children: [
            rbrand_card(dark: dark, showBorder: true),
            SizedBox(height: rSize.spaceBtwSections,),

            rSortableProduct()
          ],
        ),),
      ),
    );
  }
}
