import 'package:e_commerce_with_firebase/app/utils/helper/app_color.dart';
import 'package:flutter/material.dart';

abstract class MytextStyle {
  static TextStyle f25blackshadow = TextStyle(
      fontSize: 25,
      color: Colors.black,
      fontWeight: FontWeight.w900,
      shadows: [
        Shadow(
          offset: const Offset(0, 3.0), // Horizontal and vertical offset
          blurRadius: 3.0, // Blur radius
          color: Colors.grey.withOpacity(0.8), // Shadow color
        ),
      ]);

  static TextStyle f18grey = const TextStyle(
    color: Color(0xff9098B1),
    fontSize: 18,
  );
  static TextStyle f18whitebold = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  static TextStyle f20greybold = const TextStyle(
      color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w900);
  static TextStyle f18Primarybold = const TextStyle(
      color: AppColor.primaryColor, fontSize: 18, fontWeight: FontWeight.w900);
  static TextStyle f30whitebold = const TextStyle(
      color: Colors.white, fontSize: 30, fontWeight: FontWeight.w900);
  static TextStyle f20blackbold = const TextStyle(
      color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900);
}
