import 'package:e_commerce_with_firebase/app/ui/widgets/home/BannerScrooler.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/home/Flash_sale_title.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/home/category_list_view.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/home/product_List_view.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/home/product_grid_view.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/home/search_bar.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/home/sm_banner.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * .03),
            child: Column(
              children: [
                verticalSpacing(.09, context),
                searchBar(size),
                verticalSpacing(.02, context),
                BannerScrooler(),
                verticalSpacing(.01, context),
                const FlashSaleTitle(
                  title: 'Category',
                  subtitle: 'more Category',
                ),
                verticalSpacing(.01, context),
                CategoryListView(size: size),
                verticalSpacing(.01, context),
                const FlashSaleTitle(
                  title: ' Flash Sale',
                  subtitle: 'See More',
                ),
                verticalSpacing(.02, context),
                ProductListView(size: size),
                verticalSpacing(.01, context),
                const SmBanner(),
                verticalSpacing(.01, context),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .01),
          sliver: const ProductGridView(),
        )
      ],
    );
  }
}
