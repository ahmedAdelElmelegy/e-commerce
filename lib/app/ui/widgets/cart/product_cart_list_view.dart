import 'package:e_commerce_with_firebase/app/ui/widgets/cart/product_cart.dart';
import 'package:flutter/material.dart';

class ProductCartListView extends StatelessWidget {
  const ProductCartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => const ProductCart(),
        itemCount: 10,
      ),
    );
  }
}
