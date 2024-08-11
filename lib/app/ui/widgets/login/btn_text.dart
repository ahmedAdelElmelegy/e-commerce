import 'package:e_commerce_with_firebase/app/utils/helper/app_color.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class textbtn extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const textbtn({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: MytextStyle.f18grey.copyWith(color: AppColor.primaryColor),
      ),
    );
  }
}
