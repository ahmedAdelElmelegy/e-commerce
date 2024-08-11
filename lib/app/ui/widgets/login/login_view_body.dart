import 'package:e_commerce_with_firebase/app/ui/widgets/login/Cusotm_outline_button.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/login/Or_widget.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/login/btn_text.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/app_assets.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:e_commerce_with_firebase/app/utils/widgets/custom_button.dart';
import 'package:e_commerce_with_firebase/app/utils/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
              'Welcome to Lafyuu',
              style: MytextStyle.f25blackshadow,
            ),
            Text(
              'Sign in to continue',
              style: MytextStyle.f18grey,
            ),
            verticalSpacing(.05, context),
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
            verticalSpacing(.05, context),
            CustomButton(
              onPressed: () {},
              title: 'Sign in',
            ),
            verticalSpacing(.02, context),
            const OrWidget(),
            verticalSpacing(.01, context),
            CustomOutLineButton(
              img: Assets.googelIcon,
              title: 'Login with Google',
              onPressed: () {},
            ),
            verticalSpacing(.01, context),
            CustomOutLineButton(
              img: Assets.faceIcon,
              title: 'Login with facebook',
              onPressed: () {},
            ),
            verticalSpacing(.01, context),
            const textbtn(title: 'Forgot Password?'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(' Don’t have a account?'),
                textbtn(title: 'Register')
              ],
            )
          ],
        ),
      ),
    );
  }
}
