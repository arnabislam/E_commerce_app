import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:flutter/material.dart';
class rSectionHeading extends StatelessWidget {
  const rSectionHeading({
    super.key, required this.title,   this.buttonTitle="view all", this.textColor, this.showActionbutton=false, this.onPressed,
  });
  final String title,buttonTitle;
  final  Color?textColor;

  final bool showActionbutton;
  final void Function()?onPressed;
  @override
  Widget build(BuildContext context) {
    final dark=TheHelperFunctions.isDarkMode(BuildContext, context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if(showActionbutton)  TextButton(onPressed: onPressed, child: Text(buttonTitle,style:TextStyle(color:  dark?rColors.light:rColors.dark),))
      ],
    );
  }
}
