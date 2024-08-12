import 'package:e_commerce_with_firebase/app/ui/pages/main/main_view.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              unselectedIconTheme: IconThemeData(color: Colors.grey),
              selectedItemColor: AppColor.primaryColor,
              unselectedItemColor: Colors.grey,
              selectedLabelStyle: TextStyle(fontSize: 16),
              showUnselectedLabels: true,
              unselectedLabelStyle: TextStyle(color: Colors.grey),
              selectedIconTheme:
                  IconThemeData(color: AppColor.primaryColor, size: 30))),
      debugShowCheckedModeBanner: false,
      home: MainView(),
    );
  }
}
