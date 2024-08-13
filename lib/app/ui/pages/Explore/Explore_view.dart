import 'package:e_commerce_with_firebase/app/ui/widgets/explore/explore_view_body.dart';
import 'package:flutter/material.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ExploreViewBody(),
      ),
    );
  }
}
