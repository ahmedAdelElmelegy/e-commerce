import 'package:e_commerce_with_firebase/app/utils/helper/app_color.dart';
import 'package:flutter/material.dart';

class ClickCircleBanner extends StatelessWidget {
  const ClickCircleBanner({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: CircleAvatar(
        radius: 5,
        backgroundColor:
            isActive == true ? AppColor.primaryColor : AppColor.dividerColor,
      ),
    );
  }
}
