import 'package:e_commerce_with_firebase/app/ui/widgets/cart/cart_bottom_sheet.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/cart/cart_view_body.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: const CartViewBody(),
        bottomSheet: CartButtomSheet(size: size),
      ),
    );
  }
}
