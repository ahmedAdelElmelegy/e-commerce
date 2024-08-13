import 'package:e_commerce_with_firebase/app/ui/widgets/home/BannerScrooler.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/offer/Product_grid_view_offer.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/offer/offer_title.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:flutter/material.dart';

class OfferViewBody extends StatelessWidget {
  const OfferViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Wrapping non-sliver widgets with SliverToBoxAdapter
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const OfferTitle(),
                verticalSpacing(.02, context),
                BannerScrooler(),
                verticalSpacing(.02, context),
              ],
            ),
          ),
        ),
        // Directly use the sliver widget
        const ProductGridViewOffer(),
      ],
    );
  }
}
