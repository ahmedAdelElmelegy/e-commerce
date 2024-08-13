import 'package:e_commerce_with_firebase/app/ui/pages/inner_screen/profile/inner_screen/Name.dart';
import 'package:e_commerce_with_firebase/app/ui/widgets/inner_screen/profile/profile_list_view.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileHomeBody extends StatelessWidget {
  const ProfileHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(children: [
        Divider(
          indent: 1,
          color: Colors.grey.shade400,
        ),
        verticalSpacing(.01, context),
        InkWell(
          onTap: () {
            Get.to(const Name());
          },
          splashColor: Colors.grey.withOpacity(.2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 32,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/premium-photo/man-with-beard-shirt-that-says-hes-beard_1044943-121472.jpg?w=740'),
                ),
              ),
              horizontalSpacing(.05, context),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ahmed Adel',
                    style: MytextStyle.f20blackbold,
                  ),
                  Text(
                    'ahmed adel@gamil.com',
                    style: MytextStyle.f18grey,
                  ),
                ],
              )
            ],
          ),
        ),
        verticalSpacing(.05, context),
        const ProfileListView()
      ]),
    );
  }
}
