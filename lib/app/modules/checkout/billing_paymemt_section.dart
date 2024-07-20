import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../../../device/helper_function.dart';
import '../onboardimg/views/widgets/customShape/rounded_container.dart';
import '../onboardimg/views/widgets/customShape/section_heading.dart';
class rBillingPaymentSection extends StatelessWidget {
  const rBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=TheHelperFunctions.isDarkMode(BuildContext, context);

    return Column(children: [
      rSectionHeading(title: "Payment Method",showActionbutton:true,buttonTitle: 'Change',onPressed: (){},


      ),

      SizedBox(height: rSize.spaceBtwItems/2,),
      Row(children: [
        rRoundedContainer(
          height: 60,
          width: 35,
          backgroundColor: dark?rColors.light:Colors.white,
          padding: EdgeInsets.all(rSize.sm),
          child: Image(image: AssetImage("assets/images/paypal.png"),fit: BoxFit.contain,),
        ),
        SizedBox(width: rSize.spaceBtwItems/2,),
        Text("Paypaal",style: Theme.of(context).textTheme.bodyLarge,)
      ],)
    ],);
  }
}
