import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class rAnimationLoader extends StatelessWidget {
  const rAnimationLoader(
      {super.key,
      required this.text,
      required this.animation,
       this.actionText,
      this.showAction = false,
      this.onActionPressed});

  final String text, animation;
  final String? actionText;
  final bool showAction;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,
              width: MediaQuery.sizeOf(context).width *
                  0.8), //display lottie asset
          const SizedBox(height: rSize.defaultSpace),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                      onPressed: onActionPressed,
                      style: OutlinedButton.styleFrom(
                        backgroundColor: rColors.dark,
                      ),
                      child: Text(
                        actionText!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: rColors.light),
                      )),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
