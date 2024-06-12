import 'package:flutter/material.dart';
class rProductTitleText extends StatelessWidget {
  const rProductTitleText({
    super.key, required this.title,  this.smallSize=false,  this.maxlines=2, this.textAlign=TextAlign.left,
  });
  final String title;
  final bool smallSize;
  final int maxlines;
  final TextAlign?textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:smallSize? Theme.of(context).textTheme.labelLarge:Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      maxLines: maxlines,

    );
  }
}
