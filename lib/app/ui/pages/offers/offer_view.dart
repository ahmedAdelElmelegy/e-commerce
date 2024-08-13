import 'package:e_commerce_with_firebase/app/ui/widgets/offer/offer_view_body.dart';
import 'package:flutter/material.dart';

class OfferView extends StatelessWidget {
  const OfferView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OfferViewBody(),
      ),
    );
  }
}
