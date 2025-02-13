import 'package:flutter/material.dart';

class CustomSecondaryButton extends StatelessWidget {
  final double width;
  final double height;
  final VoidCallback onTap;
  final IconData iconData;
  const CustomSecondaryButton(
      {super.key,
      required this.width,
      required this.height,
      required this.onTap,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      child: InkWell(
          onTap: onTap,
          child: Icon(
            iconData,
            color: Theme.of(context).primaryColor,
          )),
    );
  }
}
