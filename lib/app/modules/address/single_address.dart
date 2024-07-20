import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

class rSingleAddress extends StatelessWidget {
  const rSingleAddress({super.key, required this.selectedAddress});
  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return rRoundedContainer(
      padding: EdgeInsets.all(rSize.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? rColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? rColors.darkGrey
              : rColors.grey,
      margin: EdgeInsets.only(bottom: rSize.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 5,
            child: Icon(
              selectedAddress ? Icons.check_circle : null,
              color: selectedAddress
                  ? dark
                      ? rColors.light
                      : rColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              

              Text(
                "Saiful Islam",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: rSize.sm/2,),
              Text("+966 546805215",maxLines: 1,overflow: TextOverflow.ellipsis,),
              SizedBox(height: rSize.sm/2,),
              Text("bd bashuindhgara,85/25 ,Kalbagan,Dhanmondhi,Dhaka,bangladesh  ,",softWrap: true,)
            ],
          )
        ],
      ),
    );
  }
}
