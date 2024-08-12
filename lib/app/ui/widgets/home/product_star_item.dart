import 'package:e_commerce_with_firebase/app/utils/helper/app_color.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class ProductStarItem extends StatelessWidget {
  const ProductStarItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
        padding: EdgeInsets.all(size.width * .02),
        child: Container(
          width: size.width * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size.height * 0.015),
            border: Border.all(
                color: Colors.grey,
                width: size.width * 0.0008), // Responsive border width
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: size.height * 0.4, // Adjust based on content
              maxHeight: size.height * 0.5,
            ),
            child: Padding(
              padding: EdgeInsets.all(size.width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FancyShimmerImage(
                    imageUrl:
                        'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png',
                    height: size.height * 0.2,
                  ),
                  verticalSpacing(0.01, context),
                  Text(
                    'FS - Nike Air Max 270 React',
                    style: MytextStyle.f20blackbold.copyWith(
                      fontSize: size.width * 0.05, // Responsive text size
                    ),
                  ),
                  verticalSpacing(0.01, context),
                  Text(
                    '\$299,43',
                    style: MytextStyle.f18Primarybold.copyWith(
                      fontSize: size.width * 0.045, // Responsive text size
                    ),
                  ),
                  verticalSpacing(0.01, context),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: AppColor.primaryYellow,
                      ),
                      const Icon(
                        Icons.star,
                        color: AppColor.primaryYellow,
                      ),
                      const Icon(
                        Icons.star,
                        color: AppColor.primaryYellow,
                      ),
                      const Icon(
                        Icons.star,
                        color: AppColor.primaryYellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey.withOpacity(.2),
                      ),
                    ],
                  ),
                  verticalSpacing(0.01, context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$534,33',
                        style: MytextStyle.f18grey.copyWith(
                          fontSize: size.width * 0.045, // Responsive text size
                        ),
                      ),
                      Text(
                        '24% Off',
                        style: MytextStyle.f18redbold.copyWith(
                          fontSize: size.width * 0.045, // Responsive text size
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
