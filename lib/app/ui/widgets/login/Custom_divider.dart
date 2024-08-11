import 'package:e_commerce_with_firebase/app/utils/helper/app_color.dart';
import 'package:flutter/material.dart';

class CustomDivder extends StatelessWidget {
  const CustomDivder({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 4,
      width: size.width * .35,
      color: AppColor.dividerColor,
    );
  }
}
