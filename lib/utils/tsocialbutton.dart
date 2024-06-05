import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';
class tSocialButton extends StatelessWidget {
  const tSocialButton({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color:dark?Colors.white: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  height: rSize.iconMd,
                  image: AssetImage("assets/images/google.png"))),
        ),
        SizedBox(width: rSize.sm,),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color:dark?Colors.white: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                  height: rSize.iconMd,
                  image: AssetImage("assets/images/facebook.png"))),
        ),
      ],
    );
  }
}