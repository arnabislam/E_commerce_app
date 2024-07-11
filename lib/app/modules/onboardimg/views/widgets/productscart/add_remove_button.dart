import 'package:flutter/material.dart';

import '../../../../../../constant/colors.dart';
import '../../../../../../device/helper_function.dart';
import '../../../../../../utils/size.dart';
import '../customShape/circular_icon.dart';
class rProductQuantityWithAddRemoveButton extends StatelessWidget {
  const rProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [

        rCircularIcon(icon: Icons.exposure_minus_1,height: 32,width: 32,
          size: rSize.md,
          color: TheHelperFunctions.isDarkMode(BuildContext, context)?Colors.white:Colors.black,
          backgroundColor: TheHelperFunctions.isDarkMode(BuildContext, context)?rColors.darkGrey:rColors.light,
        ),
        SizedBox(width: rSize.spaceBtwItems,),
        Text("2",style: Theme.of(context).textTheme.titleSmall,),
        SizedBox(width: rSize.spaceBtwItems,),
        rCircularIcon(icon: Icons.add,height: 32,width: 32,
            size: rSize.md,
            color: rColors.light,
            backgroundColor:rColors.primary
        ),
      ],
    );
  }
}