import 'package:flutter/material.dart';

import '../../../../constant/colors.dart';
import '../../../../utils/appbar.dart';
import '../../onboardimg/views/widgets/productscart/cart_menu_icon.dart';

class rHomeAppBar extends StatelessWidget {
  const rHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return rAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good Day For Shopping",
            style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            "Dimu Modushanka",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        rCartCounterIcon(onPressed: (){},iconColor: rColors.textWhite,)
      ],
    );
  }
}

