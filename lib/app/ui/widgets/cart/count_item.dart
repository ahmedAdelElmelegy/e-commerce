import 'package:e_commerce_with_firebase/app/utils/helper/app_color.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class CountItem extends StatelessWidget {
  const CountItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .05,
      decoration: BoxDecoration(
          border: Border.all(width: .3, color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove),
          ),
          Container(
            alignment: Alignment.center,
            color: AppColor.cartColor,
            width: size.width * .1,
            height: size.height * .05,
            child: Text(
              '1',
              style: MytextStyle.f18blackbold,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
