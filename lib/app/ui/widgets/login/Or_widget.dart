import 'package:e_commerce_with_firebase/app/ui/widgets/login/Custom_divider.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomDivder(),
        Text('OR', style: MytextStyle.f20greybold),
        const CustomDivder(),
      ],
    );
  }
}
