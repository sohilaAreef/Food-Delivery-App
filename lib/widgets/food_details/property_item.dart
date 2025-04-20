import 'package:flutter/material.dart';

class PropertyItem extends StatelessWidget {
  final String PropertyName;
  final String PropertySize;
  const PropertyItem({super.key, required this.PropertyName, required this.PropertySize});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(PropertyName,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Colors.grey,
          )),
          Text(PropertySize,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w600
          ),),
        ],
      ),
    );
  }
}