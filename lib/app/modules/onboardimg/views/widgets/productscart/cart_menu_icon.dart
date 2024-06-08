import 'package:flutter/material.dart';
class rCartCounterIcon extends StatelessWidget {
  const rCartCounterIcon({
    super.key, this.iconColor, this.onPressed,
  });
  final Color?iconColor;
  final VoidCallback?onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.shop,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100)),
            child: const Center(
                child: Text(
                  "2",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        )
      ],
    );
  }
}
