import 'package:e_commerce_with_firebase/app/ui/widgets/home/BannerScrooler.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/home/search_bar.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * .03),
      child: Column(
        children: [
          verticalSpacing(.09, context),
          searchBar(size),
          verticalSpacing(.02, context),
          BannerScrooler(),
          
        ],
      ),
    );
  }
}
