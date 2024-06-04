import 'package:flutter/material.dart';

import '../../../../../device/helper_function.dart';
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title, subtitle, image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image(
              width: TheHelperFunctions.screenWidth() * 0.8,
              height: TheHelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image)),
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}