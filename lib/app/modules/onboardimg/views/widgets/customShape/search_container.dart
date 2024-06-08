import 'package:flutter/material.dart';

import '../../../../../../device/helper_function.dart';
import '../../../../../../utils/size.dart';
class rSearchContainer extends StatelessWidget {
  const rSearchContainer({
    super.key, required this.text, this.icon,
  });
  final String text;
  final IconData?icon;
//final bool showBackground,showBorder;

  @override
  Widget build(BuildContext context) {
    final dark=TheHelperFunctions.isDarkMode(BuildContext, context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: rSize.defaultSpace),
      child: Container(
        padding: EdgeInsets.all(rSize.md
        ),
        width: TheHelperFunctions.screenWidth(),

        decoration: BoxDecoration(

            color: dark?Colors.black:Colors.white,
            borderRadius: BorderRadius.circular(rSize.cardRadiusLg),border: Border.all(color: Colors.white,)),


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