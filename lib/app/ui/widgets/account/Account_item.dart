import 'package:e_commerce_with_firebase/app/ui/models/accont/account_model.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/app_color.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class AccountItem extends StatelessWidget {
  const AccountItem({super.key, required this.account});
  final AccountModel account;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: account.fun,
      splashColor: AppColor.primaryColor.withOpacity(.15),
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Image.asset(account.image),
            horizontalSpacing(.05, context),
            Text(
              account.title,
              style: MytextStyle.f18blackbold,
            )
          ],
        ),
      ),
    );
  }
}
