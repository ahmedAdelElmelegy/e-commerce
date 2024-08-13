import 'package:e_commerce_with_firebase/app/ui/widgets/inner_screen/profile/Profile_item.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/constants.dart';
import 'package:flutter/material.dart';

class ProfileListView extends StatelessWidget {
  const ProfileListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: Constants.profile.length,
        itemBuilder: (context, index) => ProfileItem(
          profile: Constants.profile[index],
        ),
      ),
    );
  }
}
