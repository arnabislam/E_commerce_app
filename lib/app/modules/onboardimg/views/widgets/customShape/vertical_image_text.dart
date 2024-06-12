import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/size.dart';
class rVerticalImageText extends StatelessWidget {
  const rVerticalImageText({
    super.key, required this.image, required this.title,  this.textColor=Colors.white, this.backgrondColor, this.onpressed,
  });


  final String image,title;
  final Color textColor;
  final Color?backgrondColor;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    final dark=TheHelperFunctions.isDarkMode(BuildContext, context);
    return GestureDetector(
      onTap: onpressed,
      child: Padding(
        padding: const EdgeInsets.only(right: rSize.spaceBtwItems),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: EdgeInsets.all(rSize.sm),
              decoration: BoxDecoration(color: backgrondColor,borderRadius: BorderRadius.circular(100)),
              child: Image(image: AssetImage(image),fit: BoxFit.fill,color: dark?rColors.light:rColors.dark,),
            ),
            SizedBox(height: rSize.spaceBtwItems/2,),
            Text(
              title,
              style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
