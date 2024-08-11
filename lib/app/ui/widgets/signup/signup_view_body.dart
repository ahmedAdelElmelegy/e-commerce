import 'package:e_commerce_with_firebase/app/ui/pages/login/login_view.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/login/Cusotm_outline_button.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/login/Or_widget.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/login/btn_text.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/app_assets.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:e_commerce_with_firebase/app/utils/widgets/custom_button.dart';
import 'package:e_commerce_with_firebase/app/utils/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            verticalSpacing(.1, context),
            Image.asset(Assets.picon),
            verticalSpacing(.03, context),
            Text(
              'Let’s Get Started',
              style: MytextStyle.f25blackshadow,
            ),
            Text(
              'Create an new account',
              style: MytextStyle.f18grey,
            ),
            verticalSpacing(.05, context),
            const CustomTextField(
              hintText: 'Full Name',
              prefexIcon: Icons.person,
            ),
            verticalSpacing(.02, context),
            const CustomTextField(
              hintText: 'Email',
              prefexIcon: Icons.email,
            ),
            verticalSpacing(.02, context),
            const CustomTextField(
              hintText: 'Password',
              prefexIcon: Icons.key,
              sufixIcon: Icons.remove_red_eye_sharp,
            ),
            verticalSpacing(.02, context),
            const CustomTextField(
              hintText: 'confirm Password',
              prefexIcon: Icons.key,
              sufixIcon: Icons.remove_red_eye_sharp,
            ),
            verticalSpacing(.05, context),
            CustomButton(
              onPressed: () {},
              title: 'Sign up',
            ),
            verticalSpacing(.02, context),
            const OrWidget(),
            verticalSpacing(.01, context),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('have a account?'),
                textbtn(
                  title: 'Login',
                  onPressed: () {
                    Get.to(const Login());
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
