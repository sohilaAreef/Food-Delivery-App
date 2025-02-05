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
    
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
            Stack(
             children: [
               Image.network(
              food[widget.foodIndex].imagurl,
              height: MediaQuery.of(context).size.height * 0.09,
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
            
            SizedBox(height: 8.0),
            
            Text(
              food[widget.foodIndex].title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center, 
            ),
            const SizedBox(height: 4.0),
            
            Text(
              '\$ ${food[widget.foodIndex].price}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
