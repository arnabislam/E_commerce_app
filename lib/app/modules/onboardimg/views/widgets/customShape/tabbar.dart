import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/deviceUtility.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:flutter/material.dart';

class rTabBar extends StatelessWidget implements PreferredSizeWidget{
  const rTabBar({super.key, required this.tabs});
final List<Widget>tabs;
  @override
  Widget build(BuildContext context) {
    final dark=TheHelperFunctions.isDarkMode(BuildContext, context);
    return  Material(
      color: dark?rColors.textPrimary:rColors.textWhite,
      child: TabBar(tabs: tabs,

      isScrollable: true,
      indicatorColor: rColors.primary,
      labelColor: dark?rColors.textWhite:rColors.primary,
      unselectedLabelColor: rColors.darkGrey,),

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(rDeviceUtils.getAppBarHeight());
}
