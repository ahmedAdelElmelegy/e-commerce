import 'package:e_commerce_with_firebase/app/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends StatelessWidget {
  MainView({super.key});
  final MainController controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: controller.buttonitem,
          currentIndex: controller.currentIndex.value,
          onTap: (value) => controller.changeIndex(value),
        ),
      );
    });
  }
}
