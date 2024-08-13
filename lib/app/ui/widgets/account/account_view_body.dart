import 'package:e_commerce_with_firebase/app/ui/widgets/account/Account_item.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/constants.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:flutter/material.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Divider(
            indent: 1,
            color: Colors.grey.shade400,
          ),
          verticalSpacing(.01, context),
          Column(
            children: List.generate(
              Constants.accountItem.length,
              (index) => AccountItem(account: Constants.accountItem[index]),
            ),
          )
        ],
      ),
    );
  }
}
