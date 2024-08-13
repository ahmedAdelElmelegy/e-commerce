import 'package:e_commerce_with_firebase/app/ui/models/accont/profile_model.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/app_color.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key, required this.profile});
  final ProfileModel profile;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: profile.fun,

      borderRadius: BorderRadius.circular(10),
      splashColor: AppColor.primaryColor.withOpacity(.2),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Image.asset(profile.image),
            horizontalSpacing(.05, context),
            Text(
              profile.title,
              style: MytextStyle.f18blackbold,
            ),
            const Spacer(),
            Text(
              profile.data,
              style: MytextStyle.f14grey,
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
          ],
        ),
      ),
    );
  }
}
