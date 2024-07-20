import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/product_card_vertical.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import 'grid_layout.dart';
class rSortableProduct extends StatelessWidget {
  const rSortableProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
            decoration: InputDecoration(prefixIcon: Icon(Icons.sort)),
            items: [
              'Name',
              'Higher Price',
              'Lower Price' 'sale',
              'Newest',
              'Popularity'
            ]
                .map((option) => DropdownMenuItem(
                value: option, child: Text(option)))
                .toList(),
            onChanged: (value) {}),
        SizedBox(height: rSize.spaceBtwItems,),
        rGridLayout(itemCount: 14, itemBuilder: (context,index)=>rProductCardVertical())
      ],
    );
  }
}