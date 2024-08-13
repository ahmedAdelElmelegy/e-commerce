import 'package:e_commerce_with_firebase/app/ui/widgets/cart/product_cart_list_view.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpacing(.01, context),
          Text(
            'Your Cart',
            style: MytextStyle.f20blackbold,
          ),
          verticalSpacing(.02, context),
          Divider(
            indent: 1,
            color: Colors.grey.shade400,
          ),
          const ProductCartListView()
        ],
      ),
    );
  }
}
