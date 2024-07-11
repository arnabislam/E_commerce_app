import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/app/modules/review/ratingBarIndicator.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
class Userreviewcard extends StatelessWidget {
  const Userreviewcard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=TheHelperFunctions.isDarkMode(BuildContext, context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage('assets/images/success.jpg'),),
                SizedBox(width: rSize.spaceBtwItems,),
                Text("Saiful Islam",style: Theme.of(context).textTheme.titleLarge,)
              ],
              
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.menu)),



          ],
        ),

        SizedBox(height: rSize.spaceBtwItems,),
        Row(children: [
          rRatingBarIndicator(rating: 4.1),
          SizedBox(width: rSize.spaceBtwItems,),
          Text("19 december 2024",style: Theme.of(context).textTheme.bodyMedium,),
          
          SizedBox(width: rSize.spaceBtwItems,),
          

        ],),
         ReadMoreText("sukdgeragbkae gaemjhgv eakg ekgh egerkgegege gehge ejhg kh mehf ve  e gleh g,ejhge gejh ,ejhg e , ,eg ,emgh e ge  jk er.fga er f."
          ,trimMode: TrimMode.Line,
          trimExpandedText: "Show Less",
          trimCollapsedText: "Show More",
          trimLines: 2,
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: rColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: rColors.primary),
        ),

        SizedBox(height: rSize.spaceBtwItems,),

        rRoundedContainer(
          backgroundColor: dark?rColors.grey:rColors.darkGrey,
child: Padding(
  padding: EdgeInsets.all(rSize.md),
  child: Column(children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("T'r Store",style: Theme.of(context).textTheme.titleMedium,),
        Text("2 jan 2024",style: Theme.of(context).textTheme.bodyMedium,),
      ],
    ),
    SizedBox(height: rSize.sm,),
    ReadMoreText("sukdgeragbkae gaemjhgv eakg ekgh egerkgegege gehge ejhg kh mehf ve  e gleh g,ejhge gejh ,ejhg e , ,eg ,emgh e ge  jk er.fga er f."
      ,trimMode: TrimMode.Line,
      trimExpandedText: "Show Less",
      trimCollapsedText: "Show More",
      trimLines: 2,
      moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: rColors.primary),
      lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: rColors.primary),
    )
  ],),
),
        ),
        SizedBox(height: rSize.spaceBtwItems,),
      ],
    );
  }
}
