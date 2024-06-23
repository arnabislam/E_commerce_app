import 'package:flutter/material.dart';

import '../../../../../../utils/size.dart';
class rGridLayout extends StatelessWidget {
  const rGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent=288,
    required this.itemBuilder,
  });
  final int itemCount;
  final double?mainAxisExtent;
  final Widget? Function (BuildContext,int)itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(

      shrinkWrap: true,
      itemCount: itemCount,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 2,
          mainAxisExtent: mainAxisExtent,
          mainAxisSpacing: rSize.gridViewSpacing,
          crossAxisSpacing: rSize.gridViewSpacing),
      //itemBuilder: (_, index) => rProductCardVertical(),
      itemBuilder: itemBuilder,
    );
  }
}
