import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/primaryHeader.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SettingsView extends GetView {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(children: [
          rPrimaryContainer(child: Column(children: [
            Text("<HFb>")
          ],))
        ],),
      )
    );
  }
}
