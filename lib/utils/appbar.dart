import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class rAppBar extends StatelessWidget implements PreferredSizeWidget {
  const rAppBar(
      {super.key,
      this.title,
      this.showBackArrow = true,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: rSize.md),
      child: AppBar(
        automaticallyImplyLeading: true,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: dark ? rColors.dark : rColors.dark,
                ))
            : leadingIcon != null
                ? IconButton(
                    onPressed: () => leadingOnPressed, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
