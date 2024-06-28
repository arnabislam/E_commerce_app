import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/r_circular_image.dart';
import 'package:flutter/material.dart';
class rUserProfileTile extends StatelessWidget {
  const rUserProfileTile({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: rCircularImage(
        dark: dark,
        image: "assets/images/profile.png",
        height: 50,
        width: 50,
        padding: 0,
      ),
      title: Text(
        "E-Commerce apps",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: Colors.white),
      ),
      subtitle: Text(
        "arnabr131@gmail.com",
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: Colors.white),
      ),
      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit_calendar_outlined,color: Colors.white,)),
    );
  }
}
