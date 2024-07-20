import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/section_heading.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

class rBillingAddressSection extends StatelessWidget {
  const rBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rSectionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          showActionbutton: true,
        ),
        Text(
          "Code fore=ce era",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(height: rSize.spaceBtwItems,),


        Row(children: [
          Icon(Icons.phone,color: Colors.grey,),
          SizedBox(width: rSize.spaceBtwItems/2,),
          Text("+966546879187",style: Theme.of(context).textTheme.bodyMedium,)
        ],),
        SizedBox(height: rSize.spaceBtwItems/2),

        Row(children: [
          Icon(Icons.person_pin,color: Colors.grey,),
          SizedBox(width: rSize.spaceBtwItems/2,),
          Expanded(child: Text("+dhanmondhi 32 .dhaka,BAngladesh",style: Theme.of(context).textTheme.bodyMedium,))
        ],),


      ],
    );
  }
}
