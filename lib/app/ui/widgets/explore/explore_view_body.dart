import 'package:e_commerce_with_firebase/app/ui/widgets/explore/explore_item.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/home/search_bar.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:flutter/material.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpacing(.01, context),
            searchBar(size),
            verticalSpacing(.02, context),
            const ExploreItem(
              title: 'Man Fashion',
            ),
            verticalSpacing(.02, context),
            const ExploreItem(title: 'Woman Fashon')
          ],
        ),
      ),
    );
  }
}
