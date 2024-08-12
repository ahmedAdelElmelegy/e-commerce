import 'package:e_commerce_with_firebase/app/utils/helper/app_color.dart';
import 'package:e_commerce_with_firebase/app/utils/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

Row searchBar(Size size) {
    return Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * .03),
            child: SizedBox(
              width: size.width * .7,
              child:const CustomTextField(
                hintText: 'Search Product',
                iconColor: AppColor.primaryColor,
                prefexIcon: Icons.search,
              ),
            ),
          ),
          Flexible(
            child: IconButton(
                onPressed: () {},
                icon:const Icon(
                  IconlyLight.heart,
                )),
          ),
          Flexible(
            child: IconButton(
                onPressed: () {},
                icon:const Icon(
                  IconlyLight.notification,
                )),
          )
        ],
      );
  }