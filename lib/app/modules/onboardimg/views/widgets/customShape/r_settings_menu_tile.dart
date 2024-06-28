import 'package:flutter/material.dart';

import '../../../../../../constant/colors.dart';
import '../../../../../../device/helper_function.dart';
class rSettingsmenuTile extends StatelessWidget {
  const rSettingsmenuTile({
    super.key, required this.icon, required this.title, required this.subtitle, this.trailing, this.onTap,
  });
  final IconData icon;
  final String title,subtitle;
  final Widget ?trailing;
  final VoidCallback?onTap;
  @override
  Widget build(BuildContext context) {
    final dark=TheHelperFunctions.isDarkMode(BuildContext, context);
    return ListTile(
      leading: Icon(icon,size: 28,color: rColors.primary,),
      title: Text(title,style: Theme.of(context).textTheme.titleMedium!.apply(color: dark?Colors.white:Colors.black),),
      subtitle: Text(subtitle,style: Theme.of(context).textTheme.labelMedium!.apply(color:Colors.grey),),
      trailing: trailing,
      onTap: onTap,
    );
  }
}