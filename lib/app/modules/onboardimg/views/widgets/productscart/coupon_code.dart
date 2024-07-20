import 'package:flutter/material.dart';

import '../../../../../../constant/colors.dart';
import '../../../../../../device/helper_function.dart';
import '../../../../../../utils/size.dart';
import '../customShape/rounded_container.dart';
class rCouponCode extends StatelessWidget {
  const rCouponCode({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return rRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? rColors.dark : Colors.white,
      padding: const EdgeInsets.only(
          top: rSize.sm,
          bottom: rSize.sm,
          right: rSize.sm,
          left: rSize.sm),
      child: Row(
        children: [
          Flexible(
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Have a Promo Code?Apply this Code",
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                ),
              )),
          ElevatedButton(
            onPressed: () {},
            child: Text("Apply"),
            style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? Colors.white.withOpacity(0.5)
                    : rColors.dark.withOpacity(0.5),
                backgroundColor: rColors.grey.withOpacity(0.5),
                side: BorderSide(
                    color: rColors.grey.withOpacity(0.5))),
          )
        ],
      ),
    );
  }
}
