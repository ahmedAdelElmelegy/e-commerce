import 'package:e_commerce_with_firebase/app/ui/widgets/inner_screen/profile/profile_home_body.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: MytextStyle.f20blackbold,
          ),
        ),
        body: const ProfileHomeBody(),
      ),
    );
  }
}
