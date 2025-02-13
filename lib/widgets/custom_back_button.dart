import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/custom_secondary_button.dart';

class CustomBackButton extends StatelessWidget {
  final double width;
  final double height;
  const CustomBackButton(
      {super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return CustomSecondaryButton(
        width: width,
        height: height,
        onTap: Navigator.of(context).pop,
        iconData: Icons.arrow_back_ios_new_rounded);
  }
}
