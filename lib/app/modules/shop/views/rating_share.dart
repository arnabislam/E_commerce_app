import 'package:flutter/material.dart';

import '../../../../utils/size.dart';
class rRatingShare extends StatelessWidget {
  const rRatingShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //ratings
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 24,
            ),
            const SizedBox(
              width: rSize.spaceBtwItems / 2,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '5.0',
                  style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: '(199)'),
            ]))
          ],
        ),


        IconButton(onPressed: (){}, icon: const Icon(Icons.share,size: rSize.iconMd,))
      ],


    );
  }
}