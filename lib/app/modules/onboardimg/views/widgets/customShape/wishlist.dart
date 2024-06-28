import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/circular_icon.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/grid_layout.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/product_card_vertical.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/productscart/cart_menu_icon.dart';
import 'package:e_commerce/utils/appbar.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import '../../../../../../device/helper_function.dart';


class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return  Scaffold(
     appBar: AppBar(title: Text("afshdg"),actions: [Padding(
       padding: const EdgeInsets.all(8.0),
       child: Icon(Icons.add),
     )],),


      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(rSize.defaultSpace),
          child: Column(children: [
            rGridLayout(itemCount: 10, itemBuilder: (_,index)=>rProductCardVertical())
          ],),
        ),
      ),

    );
  }
}
