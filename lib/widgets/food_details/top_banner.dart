import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/custom_back_button.dart';
import 'package:food_delivery/widgets/favourite_button.dart';

class TopBanner extends StatelessWidget {
  final FoodItem foodItem;
  const TopBanner({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.15),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: SafeArea(
                child: SizedBox(
                  height: size.height * 0.4,
                  width: size.width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomBackButton(
                            width: size.width * 0.09,
                            height: size.height * 0.04,
                          ),
                          FavouritButton(
                            foodIndex: 1,
                            width: size.width * 0.09,
                            height: size.height * 0.04,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: Image.network(
                          foodItem.imagurl,
                          fit: BoxFit.contain,
                          height: size.height * 0.3,
                          width: size.width,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}