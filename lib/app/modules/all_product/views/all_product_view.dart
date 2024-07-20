import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/grid_layout.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/product_card_vertical.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../onboardimg/views/widgets/customShape/sortable_product.dart';
import '../controllers/all_product_controller.dart';

class AllProductView extends GetView<AllProductController> {
  const AllProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Popular Products'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(rSize.defaultSpace),
            child: rSortableProduct(),
          ),
        ));
  }
}


