import 'package:e_commerce_with_firebase/app/utils/helper/app_color.dart';
import 'package:flutter/material.dart';

class CustomDivder extends StatelessWidget {
  const CustomDivder({super.key, this.isWidth});
  final bool? isWidth;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 4,
      width: isWidth == true ? size.width : size.width * .35,
      color: AppColor.dividerColor,
    );
  }
}
