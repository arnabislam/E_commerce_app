import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/circular_container.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/product_title_text.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/section_heading.dart';
import 'package:e_commerce/app/modules/shop/views/product_price_text.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class rProductAtributeView extends GetView {
  const rProductAtributeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Column(
      children: [
        rRoundedContainer(
          backgroundColor: dark ? rColors.textSecondary : rColors.darkGrey,
          child: Padding(
            padding: const EdgeInsets.all(rSize.md),
            child: Column(
              children: [
                Row(
                  children: [
                    const rSectionHeading(
                      title: "Variation",
                      showActionbutton: false,
                    ),
                    const SizedBox(
                      width: rSize.spaceBtwItems,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const rProductTitleText(
                              title: "Price:",
                              smallSize: true,
                            ),
                            Text(
                              " \$25",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough),
                            ),
                            const SizedBox(
                              width: rSize.spaceBtwItems,
                            ),
                            const rProductPriceText(
                              price: "20",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const rProductTitleText(
                              title: "Stock:",
                              smallSize: true,
                            ),
                            const SizedBox(
                              width: rSize.spaceBtwItems,
                            ),
                            Text("In Stock",
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const rProductTitleText(
                  title:
                      "This is the description of the Product and it can go up is max 4 lines",
                  smallSize: true,
                  maxlines: 4,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: rSize.spaceBtwItems,
        ),

        //Attributes
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                rSectionHeading(
                  title: "Colors",
                ),
                SizedBox(
                  height: rSize.spaceBtwItems / 2,
                ),
                Wrap(
                  spacing: 8,
                  children: [
                    rChoiceChip(
                      text: 'Green',
                      selected: false,
                      onSelected: (value) {},
                    ),
                    rChoiceChip(
                        text: 'Blue', selected: true, onSelected: (value) {}),
                    rChoiceChip(
                        text: 'Red', selected: false, onSelected: (value) {}),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                rSectionHeading(
                  title: "Size",
                ),
                SizedBox(
                  height: rSize.spaceBtwItems / 2,
                ),
                Wrap(
                  spacing: 8,
                  children: [
                    rChoiceChip(
                        text: 'Eu 34', selected: true, onSelected: (value) {}),
                    rChoiceChip(
                        text: 'Eu 36', selected: true, onSelected: (value) {}),
                    rChoiceChip(
                        text: 'Eu 38', selected: false, onSelected: (value) {}),
                  ],
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}



class rChoiceChip extends StatelessWidget {
  const rChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = TheHelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? Colors.white : null),
      avatar: isColor
          ? rCircularWidget(
              width: 50,
              height: 50,
              backgroundColour: TheHelperFunctions.getColor(text)!)
          : null,
      shape: isColor ? const CircleBorder() : null,
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
      selectedColor: isColor ? Colors.green : null,
      backgroundColor: isColor ? Colors.green : null,
    );
  }
}
