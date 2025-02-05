import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final favoriteFood = food.where((FoodItem) =>FoodItem.isFavorite == true).toList();
    
    if(favoriteFood.isEmpty)
    {
      return Column(
        children: [
          Image.network(
            'https://cdn4.iconfinder.com/data/icons/shopping-460/200/empty-cart-512.png',
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          const Text(
            'No favorite items added yet',
            style: TextStyle(
              fontSize: 22,
              color: Colors.grey,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: favoriteFood.length,
        itemBuilder: (context, index) => Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.network(food[index].imagurl, height: 70,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(food[index].title, 
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,)
                      ),
                      SizedBox(height: 4.0),
                      Text('\$ ${food[index].price}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                      ),
                    ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                     final targetedItem = favoriteFood[index];
                     int targetedIndex = food.indexOf(targetedItem);
                     setState(()
                     {
                        food[targetedIndex] = food[targetedIndex].copyWith(isFavorite: false);
                        favoriteFood.remove(targetedItem);
                     });
                    },
                    icon: Icon(
                       Icons.favorite,
                      color: Theme.of(context).primaryColor,
                      size: 30,
                    ),
                  ),
                ],
                ),
            ),
          )
      ),
    );
  }
}