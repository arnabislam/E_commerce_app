import 'package:flutter/material.dart';

import '../../../utils/size.dart';
class rBillingAmountSection extends StatelessWidget {
  const rBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [

      ///subtotal

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("SubTotal",style: Theme.of(context).textTheme.labelLarge,),
          Text("\$2500",style: Theme.of(context).textTheme.bodyMedium,),
        ],),
      SizedBox(height: rSize.spaceBtwItems/2,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Shipping Fee",style: Theme.of(context).textTheme.labelLarge,),
          Text("\$25",style: Theme.of(context).textTheme.bodyMedium,),
        ],),
      SizedBox(height: rSize.spaceBtwItems/2,),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Tax Fee",style: Theme.of(context).textTheme.labelLarge,),
          Text("\$6.0",style: Theme.of(context).textTheme.bodyMedium,),
        ],),
      SizedBox(height: rSize.spaceBtwItems/2,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Order Total",style: Theme.of(context).textTheme.labelLarge,),
          Text("\$126.0",style: Theme.of(context).textTheme.bodyMedium,),
        ],),

      ///0558283188
    ],);
  }
}
