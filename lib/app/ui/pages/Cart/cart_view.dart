import 'package:e_commerce_with_firebase/app/ui/widgets/cart/Custom_Field_cupon.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/cart/Custom_cupon_title.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/cart/cart_view_body.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:e_commerce_with_firebase/app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: const CartViewBody(),
        bottomSheet: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                CustomFieldCupon(size: size),
                verticalSpacing(.02, context),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: .3, color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const CustomCuponTitle(
                          title: 'item(3)',
                          subtitle: '\$598.86',
                        ),
                        verticalSpacing(.01, context),
                        const CustomCuponTitle(
                          title: 'Shipping',
                          subtitle: '\$598.86',
                        ),
                        verticalSpacing(.01, context),
                        const CustomCuponTitle(
                          title: 'Import charges',
                          subtitle: '\$598.86',
                        ),
                        verticalSpacing(.02, context),
                        const CustomCuponTitle(
                          istotal: true,
                          title: 'Total Price',
                          subtitle: '\$598.86',
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpacing(.03, context),
                CustomButton(onPressed: () {}, title: 'Check Out'),
                verticalSpacing(.01, context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
