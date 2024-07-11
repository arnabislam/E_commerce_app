import 'package:e_commerce/app/modules/review/views/userReviewCard.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/deviceUtility.dart';
import 'package:e_commerce/utils/appbar.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

import '../controllers/review_controller.dart';
import '../product_reviews.dart';
import '../ratingBarIndicator.dart';
import '../rating_progress_indicator.dart';

class ReviewView extends GetView<ReviewController> {
  const ReviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Reviews & Ratings"),
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(rSize.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("fjsdfcgfwef vweuf wkeufyv wkfvwK KWEYFVKH ybeflW  SGBIG"),
                SizedBox(
                  height: rSize.spaceBtwItems,
                ),
                rOverallProductRating(),
                rRatingBarIndicator(rating: 4.5,),
                SizedBox(height: rSize.sm,),
                Text("12,611",style:Theme.of(context).textTheme.bodySmall,),
                SizedBox(height: rSize.spaceBtwSections,),
                Userreviewcard(),
                Userreviewcard(),
                Userreviewcard(),
                Userreviewcard(),
              ],
            ),
          ),
        ));
  }
}

