import 'package:e_commerce_with_firebase/app/utils/helper/app_assets.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class CategoyItem extends StatelessWidget {
  const CategoyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(side: const BorderSide(width: .1)),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              child: Image.asset(Assets.groupcat),
            ),
          ),
          verticalSpacing(.005, context),
          Text(
            'title',
            style: MytextStyle.f18grey,
          )
        ],
      ),
    );
  }
}
