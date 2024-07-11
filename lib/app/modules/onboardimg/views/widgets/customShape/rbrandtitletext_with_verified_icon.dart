import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rbrand_title_text.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/constant/enums.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/size.dart';
class rbrandTitleTextWithVerificationIcon extends StatelessWidget {
  const rbrandTitleTextWithVerificationIcon({
    super.key, required this.title,
     this.maxLines=1,
    this.textColor,
    this.iconColor=Colors.blue,
    this.textAlign,
     this.brandTextSize=TextSizes.small,
  });
final String title;
final int maxLines;
final Color?textColor,iconColor;
final TextAlign?textAlign;
final TextSizes brandTextSize;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: rBrandTitleText(title: title,
        color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,


        )),
        const SizedBox(
          width: rSize.sm,
        ),
        const Icon(
          Icons.verified,
          color: Colors.green,
          size: 14,
        )
      ],
    );
  }
}

