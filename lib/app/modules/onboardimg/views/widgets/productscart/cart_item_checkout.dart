import 'package:flutter/material.dart';

import '../../../../../../utils/size.dart';
import '../customShape/product_title_text.dart';
import 'add_remove_button.dart';
import 'cart_item.dart';
class rCartItemCheckout extends StatelessWidget {
  const rCartItemCheckout({
    super.key,  this.showAddRemoveButton=true,
  });
final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, index) =>  Column(
          children: [
            rCartItem(),
            if(showAddRemoveButton)
            SizedBox(
              height: rSize.spaceBtwItems,
            ),
            if(showAddRemoveButton) const Row(
              ///add remove button
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    rProductQuantityWithAddRemoveButton(),
                  ],
                ),
                rProductTitleText(title: "\$2500")
              ],
            )
          ],
        ),
        separatorBuilder: (_, __) => const SizedBox(
          height: rSize.defaultSpace,
        ),
        itemCount: 2);
  }
}
