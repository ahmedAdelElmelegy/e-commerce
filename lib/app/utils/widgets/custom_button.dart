import 'package:e_commerce_with_firebase/app/utils/helper/app_color.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const CustomButton({super.key, this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: Size(double.infinity, size.height * .06),
          backgroundColor: AppColor.primaryColor),
      onPressed: onPressed,
      child: Text(
        title,
        style: MytextStyle.f18whitebold,
      ),
    );
  }
}
