import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/app/modules/home/controllers/home_controller.dart';
import 'package:e_commerce/app/modules/home/views/home_view.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rRoundedImage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../utils/size.dart';
import 'circular_container.dart';

class rCaroSlider extends StatelessWidget {
  const rCaroSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: banners
                .map((url) => rRoundedImage(
                      imageUrl: url,
                    ))
                .toList(),
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    controller.updatePageCurrentIndicator(index))),
        const SizedBox(
          height: rSize.spaceBtwItems,
        ),
        Center(
          child: Obx(() {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  rCircularWidget(
                    margin: EdgeInsets.only(right: 10),
                    height: 4,
                    width: 20,
                    backgroundColour:
                        controller.carousaleCurrentIndex.value == i
                            ? Colors.green
                            : Colors.grey,
                  ),
              ],
            );
          }),
        ),
      ],
    );
  }
}
