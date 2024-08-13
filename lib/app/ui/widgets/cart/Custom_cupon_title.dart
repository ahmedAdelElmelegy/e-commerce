import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class CustomCuponTitle extends StatelessWidget {
  const CustomCuponTitle({
    super.key,
    required this.title,
    required this.subtitle,
    this.istotal,
  });
  final String title;
  final String subtitle;
  final bool? istotal;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
              istotal == true ? MytextStyle.f18blackbold : MytextStyle.f18grey,
        ),
        Text(
          subtitle,
          style: istotal == true
              ? MytextStyle.f18Primarybold
              : MytextStyle.f18blackbold,
        ),
      ],
    );
  }
}
