import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:e_commerce_with_firebase/app/ui/widgets/home/search_bar.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        verticalSpacing(.09, context),
        searchBar(size),
        BannerScrooler()
      ],
    );
  }
}

class BannerScrooler extends StatelessWidget {
  BannerScrooler({super.key});
  List<String> bannerImage = [
    'assets/images/product/Promotion Image.png'
        'assets/images/product/Promotion Image.png'
        'assets/images/product/Promotion Image.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(bannerImage[0]))),
    );
  }
}
