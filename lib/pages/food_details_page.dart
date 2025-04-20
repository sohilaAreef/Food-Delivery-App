import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/food_details/property_item.dart';
import 'package:food_delivery/widgets/food_details/top_banner.dart';


class FoodDetailsPage extends StatelessWidget {
  final FoodItem foodItem;
  const FoodDetailsPage({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBanner(foodItem: foodItem),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(foodItem.title,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'Bufflo Burger',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.grey),
                  ),
                  SizedBox(height: 32.0,),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        PropertyItem(PropertyName: "Size", PropertySize: "Medium"),
                        VerticalDivider(
                          endIndent: 0,
                          indent: 0,
                        ),
                        PropertyItem(PropertyName: "Cooking", PropertySize: "10-20 Min"),
                        VerticalDivider(
                          endIndent: 0,
                          indent: 0,
                        ),
                        PropertyItem(PropertyName: "Delivery", PropertySize: "30-40 Min"),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0,),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut ligula nec enim facilisis efficitur. Donec ac nunc a nisi facilisis bibendum. Sed euismod, nunc vel tincidunt fringilla, nunc nisl aliquet nunc, eget aliquam nunc nisl eget nunc. Sed euismod, nunc vel tincidunt fringilla, nunc nisl aliquet nunc, eget aliquam nunc nisl eget nunc. Sed euismod, nunc vel tincidunt fringilla, nunc nisl aliquet nunc, eget aliquam nunc nisl eget nunc.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.w600,
                            color: Colors.grey),
                  ),
                  SizedBox(height: 32.0,),
                  Row(
                    children: [
                      Text(
                        '\$ ${foodItem.price}',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontWeight: FontWeight.w600,
                                color: Theme.of(context).primaryColor),
                      ),
                      SizedBox( width: 32.0,),
                      Expanded(
                        child: SizedBox(
                          height: size.height * 0.05,
                          child: ElevatedButton(onPressed: (){},
                           child: Text('checkout',
                           style: Theme.of(context).textTheme.titleLarge!.copyWith(
                             color: Colors.white
                           ),),
                           style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor),),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
