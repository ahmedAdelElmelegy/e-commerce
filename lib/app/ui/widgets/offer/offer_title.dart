import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class OfferTitle extends StatelessWidget {
  const OfferTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        Text(
          'Super Flash Sale',
          style: MytextStyle.f20blackbold,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 35,
            ))
      ],
    );
  }
}
