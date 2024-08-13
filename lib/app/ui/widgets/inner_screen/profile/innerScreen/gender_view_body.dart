import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:e_commerce_with_firebase/app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GenderViewBody extends StatefulWidget {
  GenderViewBody({super.key});

  @override
  State<GenderViewBody> createState() => _GenderViewBodyState();
}

class _GenderViewBodyState extends State<GenderViewBody> {
  String _selectedGender = 'Select Gender'; // Initial value
  final List<String> _genderOptions = ['Male', 'Female', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose Gender',
            style: MytextStyle.f18blackbold,
          ),
          verticalSpacing(.02, context),
          DropdownButtonFormField<String>(
            value: _selectedGender == 'Select Gender' ? null : _selectedGender,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            hint: Text(_selectedGender),
            onChanged: (String? newValue) {
              setState(() {
                _selectedGender = newValue!;
              });
            },
            items: _genderOptions.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          Spacer(),
          CustomButton(
            onPressed: () {},
            title: 'Save',
          ),
          verticalSpacing(.03, context),
        ],
      ),
    );
  }
}
