import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:e_commerce_with_firebase/app/utils/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomFieldCupon extends StatelessWidget {
  const CustomFieldCupon({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width * .7,
          child: const CustomTextField(
            isCart: true,
            prefexIcon: Icons.cached,
            hintText: 'Enter Cupon Code',
          ),
        ),
        Expanded(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(size.width, size.height * .07),
                    shape: const ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    backgroundColor: Colors.blue),
                onPressed: () {},
                child: Text(
                  'Apply',
                  style: MytextStyle.f18white,
                )))
      ],
    );
  }
}
