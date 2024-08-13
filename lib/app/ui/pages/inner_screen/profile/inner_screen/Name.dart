import 'package:e_commerce_with_firebase/app/ui/widgets/inner_screen/profile/innerScreen/Name_view_body.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: Text(
            'Name',
            style: MytextStyle.f18blackbold,
          ),
        ),
        body: const NameViewBody(),
      ),
    );
  }
}
