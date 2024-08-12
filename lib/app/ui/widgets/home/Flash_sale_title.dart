import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class FlashSaleTitle extends StatelessWidget {
  const FlashSaleTitle(
      {super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: MytextStyle.f20blackbold,
        ),
        Text(
          subtitle,
          style: MytextStyle.f18Primarybold,
        ),
      ],
    );
  }
}
