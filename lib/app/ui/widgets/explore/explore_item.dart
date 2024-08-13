import 'package:e_commerce_with_firebase/app/ui/widgets/home/category_item.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: MytextStyle.f20blackbold,
        ),
        Wrap(
          children: List.generate(
            6,
            (index) => const CategoyItem(),
          ),
        ),
      ],
    );
  }
}
