import 'package:cloud_firestore/cloud_firestore.dart';
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
      body: Column(
        children: [
          //colum bad ditey hobey
          StreamBuilder(
            stream: FirebaseFirestore.instance.collection("users").snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
              if(snapshot.hasError){
                return Center(child: CircularProgressIndicator(),);
              }
              if(snapshot.connectionState== ConnectionState.waiting){
                return Center(child: CircularProgressIndicator(),);
              }
              return Container(
                height: 125,
                child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context,index){
                      var doc = snapshot.data!.docs[index];
                      return Text(doc
                      ['firstName']);
                    }),
              );
            },
          ),

          const Padding(
            padding: EdgeInsets.all(rSize.defaultSpace),
            child: rCartItemCheckout(),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(rSize.defaultSpace),
        child:
            ElevatedButton(onPressed: () {Get.to(CheckoutView());}, child: Text("CheckOut \$25000")),
      ),



    );
  }
}

