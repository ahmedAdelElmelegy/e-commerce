import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:e_commerce_with_firebase/app/utils/widgets/custom_button.dart';
import 'package:e_commerce_with_firebase/app/utils/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class NameViewBody extends StatelessWidget {
  const NameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            indent: 1,
            color: Colors.grey.shade400,
          ),
          verticalSpacing(.01, context),
          Text(
            'First Name',
            style: MytextStyle.f18blackbold,
          ),
          verticalSpacing(.02, context),
          const CustomTextField(
            prefexIcon: Icons.person,
            hintText: 'First Name',
          ),
          verticalSpacing(.05, context),
          Text(
            'Last Name',
            style: MytextStyle.f18blackbold,
          ),
          verticalSpacing(.02, context),
          const CustomTextField(
            prefexIcon: Icons.person,
            hintText: 'Last Name',
          ),
          const Spacer(),
          CustomButton(
            onPressed: () {},
            title: 'Save',
          ),
          verticalSpacing(.03 , context),
        ],
      ),
    );
  }
}
