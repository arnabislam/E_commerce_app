import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../../../device/deviceUtility.dart';
class rRatingProgressIndicator extends StatelessWidget {
  const rRatingProgressIndicator({
    super.key, required this.text, required this.value,
  });
  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(
              text,
              style:
              Theme.of(context).textTheme.titleSmall,
            )),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: rDeviceUtils.getScreenWidth(context) *
                0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 12,
              backgroundColor: Colors.grey,
              borderRadius: BorderRadius.circular(7),
              valueColor:
              AlwaysStoppedAnimation(rColors.primary),
            ),
          ),
        )
      ],
    );
  }
}