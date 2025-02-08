import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FoodGridItem extends StatefulWidget {
  final int foodIndex;
  const FoodGridItem({
    super.key,
    required this.foodIndex,
  });

  @override
  State<FoodGridItem> createState() => _FoodGridItemState();
}

class _FoodGridItemState extends State<FoodGridItem> {
  bool fav =false;
  @override
  Widget build(BuildContext context) {
    
  final size = MediaQuery.of(context).size;
  
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(
          builder: (context, constrants) => 
          Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
            Stack(
              alignment: Alignment.topCenter,
             children: [
               Image.network(
              food[widget.foodIndex].imagurl,
              height: constrants.maxHeight * 0.5,
              width: double.infinity,  
              fit: BoxFit.contain, 
            ),
            Container(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () =>
                setState(()
                {
                  food[widget.foodIndex] =
                   food[widget.foodIndex].copyWith(isFavorite: !food[widget.foodIndex].isFavorite);
                 
                }),
                child: Icon(
                  food[widget.foodIndex].isFavorite ? Icons.favorite :Icons.favorite_border,
                 color: Theme.of(context).primaryColor,))
            )
             ],

            ),
            
            SizedBox(height: constrants.maxHeight * 0.02),
            
            Text(
              food[widget.foodIndex].title,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: constrants.maxHeight * 0.02),
            
            Text(
              '\$ ${food[widget.foodIndex].price}',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),)
      ),
    );
  }
}
