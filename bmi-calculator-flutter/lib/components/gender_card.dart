import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class GenderCard extends StatelessWidget {
  GenderCard({this.genderIcon, this.genderName});

  final IconData genderIcon;
  final String genderName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: kIconsize,
        ),
        SizedBox(
          height: kSizedbox_height,
        ),
        Text(
          genderName,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
