import 'package:e_commerce_with_firebase/app/utils/helper/app_assets.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class SmBanner extends StatelessWidget {
  const SmBanner({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .3,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              image: AssetImage(Assets.smbanner), fit: BoxFit.fill)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * .5,
              child: Text(
                'Recomended Product',
                style: MytextStyle.f30whitebold,
              ),
            ),
            verticalSpacing(.04, context),
            Text(
              'We recommend the best for you',
              style: MytextStyle.f18white,
            ),
          ],
        ),
      ),
    );
  }
}
