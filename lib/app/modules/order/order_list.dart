import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

class rOrderListItems extends StatefulWidget {
  const rOrderListItems({super.key});

  @override
  State<rOrderListItems> createState() => _rOrderListItemsState();
}

class _rOrderListItemsState extends State<rOrderListItems> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // String userName = 'No Name';
  // String lName = 'No Name';
  //
  // Future<void> getUserData() async {
  //   try {
  //     DocumentSnapshot<Map<String, dynamic>> snapshot = await firestore.collection('user').doc('mamun').get();
  //     if (snapshot.exists) {
  //       setState(() {
  //         userName = snapshot.data()?['name'] ?? 'No Name';
  //         lName = snapshot.data()?['age'] ?? 'No Name';
  //
  //       });
  //     } else {
  //       setState(() {
  //         userName = 'User does not exist';
  //       });
  //     }
  //   } catch (e) {
  //     setState(() {
  //       userName = 'Error: $e';
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return ListView.separated(
      itemBuilder: (_,index)=>
       rRoundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(rSize.sm),
        backgroundColor: dark ? rColors.dark : Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [



            Row(
              children: [
                Icon(Icons.safety_check_outlined),
                const SizedBox(
                  width: rSize.spaceBtwItems / 2,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Processing",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.apply(color: rColors.primary, fontSizeDelta: 1),
                      ),
                      Text(
                        "02 jun 2024",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
            const SizedBox(
              height: rSize.spaceBtwItems,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.ac_unit),
                      const SizedBox(
                        width: rSize.spaceBtwItems / 2,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Order",
                              style: Theme.of(context).textTheme.bodyLarge?.apply(
                                  color: rColors.grey, fontSizeDelta: 1),
                            ),
                            Text(
                              "[Fwre4356]",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.add_business),
                      const SizedBox(
                        width: rSize.spaceBtwItems / 2,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Shipping Date",
                              style: Theme.of(context).textTheme.bodyLarge?.apply(
                                  color: rColors.grey, fontSizeDelta: 1),
                            ),
                            Text(
                              "02 jun 2024",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ), separatorBuilder: (_,  index) => SizedBox(height: rSize.spaceBtwItems,), itemCount: 14 ,
    );
  }
}
