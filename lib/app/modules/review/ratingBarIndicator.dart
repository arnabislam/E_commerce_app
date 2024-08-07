import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../constant/colors.dart';
class rRatingBarIndicator extends StatelessWidget {
  const rRatingBarIndicator({
    super.key, required this.rating,
  });
final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(

        rating: rating,
        itemSize: 20,
        unratedColor: Colors.grey,
        itemBuilder: (_,__)=>Icon(Icons.star,color: rColors.primary,));
  }
}

