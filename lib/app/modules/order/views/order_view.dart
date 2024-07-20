import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_controller.dart';
import '../order_list.dart';

class OrderView extends GetView<OrderController> {
  const OrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.all(rSize.defaultSpace),

      child: rOrderListItems(),
      )
    );
  }
}
