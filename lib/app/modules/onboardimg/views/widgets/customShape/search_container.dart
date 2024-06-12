import 'package:e_commerce/constant/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../device/helper_function.dart';
import '../../../../../../utils/size.dart';
class rSearchContainer extends StatelessWidget {
  const rSearchContainer({
    super.key, required this.text, this.icon,  this.showBackground=true,  this.showBorder=true,  this.padding= const EdgeInsets.symmetric(horizontal: rSize.defaultSpace),
  });
  final String text;
  final IconData?icon;
final bool showBackground,showBorder;
final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark=TheHelperFunctions.isDarkMode(BuildContext, context);
    return Padding(
      padding: padding,
      child: Container(
        padding: EdgeInsets.all(rSize.md
        ),
        width: TheHelperFunctions.screenWidth(),

        decoration: BoxDecoration(

            color: showBackground?dark?rColors.dark:rColors.light:Colors.transparent,
            borderRadius: BorderRadius.circular(rSize.cardRadiusLg),border: showBorder?Border.all(color: rColors.textSecondary):null),


        child: Row(
          children: [
            Icon(icon,color: Colors.grey,),
            SizedBox(width: rSize.spaceBtwItems,),
            Text(text,style: Theme.of(context).textTheme.headlineSmall,)
          ],
        ),
      ),
    );
  }
}