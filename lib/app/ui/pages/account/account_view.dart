import 'package:e_commerce_with_firebase/app/ui/widgets/account/account_view_body.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: MytextStyle.f20blackbold,
        ),
      ),
      body: const AccountViewBody(),
    ));
  }
}
