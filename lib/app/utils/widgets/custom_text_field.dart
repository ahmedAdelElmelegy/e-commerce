import 'package:e_commerce_with_firebase/app/utils/helper/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? prefexIcon;
  final IconData? sufixIcon;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.prefexIcon,
    this.sufixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            hintText: hintText,
            border: outBorder(const Color(0xff9098B1)),
            enabledBorder: outBorder(const Color(0xff9098B1)),
            focusedBorder: outBorder(AppColor.primaryColor),
            prefixIcon: Icon(prefexIcon),
            suffixIcon: Icon(sufixIcon)));
  }

  OutlineInputBorder outBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
            color: color, width: color != AppColor.primaryColor ? .3 : 2));
  }
}
