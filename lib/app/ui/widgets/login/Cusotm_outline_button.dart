import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class CustomOutLineButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final String img;
  const CustomOutLineButton(
      {super.key, this.onPressed, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          minimumSize: Size(size.width, size.height * .07),
        ),
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              img,
            ),
            horizontalSpacing(.2, context),
            Text(
              title,
              style: MytextStyle.f20greybold,
            )
          ],
        ));
  }
}
