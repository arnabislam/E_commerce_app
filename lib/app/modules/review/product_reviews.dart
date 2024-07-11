import 'package:e_commerce/app/modules/review/rating_progress_indicator.dart';
import 'package:flutter/material.dart';
class rOverallProductRating extends StatelessWidget {
  const rOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text(
              "4.0",
              style: Theme.of(context).textTheme.displayLarge,
            )),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              rRatingProgressIndicator(text: '5', value:1.0,),
              rRatingProgressIndicator(text: '4', value: 0.2,),
              rRatingProgressIndicator(text: '3', value: 0.7,),
              rRatingProgressIndicator(text: '2', value: 0.4,),
              rRatingProgressIndicator(text: '1', value: 0.3,),
            ],
          ),
        )
      ],
    );
  }
}


