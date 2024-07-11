import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/r_circular_image.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rbrandtitletext_with_verified_icon.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rounded_container.dart';
import 'package:flutter/material.dart';

import '../../../../../../constant/enums.dart';
import '../../../../../../utils/size.dart';

class rbrand_card extends StatelessWidget {
  const rbrand_card({
    super.key,
    required this.dark, this.onTap, required this.showBorder,
  });

  final bool dark;
  final void Function()?onTap;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: rRoundedContainer(
        padding: EdgeInsets.all(rSize.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: rCircularImage(
                backgroundColour: Colors.transparent,
                image: 'assets/images/dressmaker.png',
                overlayColor: dark ? Colors.white : Colors.black,
                dark: dark,
              ),
            ),
            const SizedBox(
              width: rSize.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const rbrandTitleTextWithVerificationIcon(title: "Hilfiger",brandTextSize: TextSizes.large,),
                  Text("250 products hfgvh hgv",overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

