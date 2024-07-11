import 'package:e_commerce/app/modules/address/add_new_address.dart';
import 'package:e_commerce/app/modules/address/single_address.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/address_controller.dart';

class AddressView extends GetView<AddressController> {
  const AddressView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(AddNewAddress());
      },backgroundColor: rColors.primary,
      
child: Icon(Icons.add,color: Colors.white,),
      ),
      appBar: AppBar(
        title: const Text('Address'),

      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(rSize.spaceBtwItems),
        child: Column(children: [
          rSingleAddress(selectedAddress: false),
          rSingleAddress(selectedAddress: true),
        ],),
        ),

      )
    );
  }
}
