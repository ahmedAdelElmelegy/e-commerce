import 'package:e_commerce_with_firebase/app/ui/widgets/home/product_star_item.dart';
import 'package:flutter/material.dart';

class ProductGridViewOffer extends StatelessWidget {
  const ProductGridViewOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 2.1 / 4),
      itemBuilder: (context, index) => const ProductStarItem(),
      itemCount: 10,
    );
  }
}
