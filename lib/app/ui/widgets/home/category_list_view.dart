import 'package:e_commerce_with_firebase/app/ui/widgets/home/category_item.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: size.height * .15,
        child: ListView.builder(
          itemBuilder: (context, index) => CategoyItem(),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
        ));
  }
}

