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
    final size = MediaQuery.of(context).size;
    
    if(favoriteFood.isEmpty)
    {
      return Column(
        children: [
          Image.network(
            'https://cdn4.iconfinder.com/data/icons/shopping-460/200/empty-cart-512.png',
            height: size.height * 0.5,
          ),
          Text(
            'No favorite items added yet',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Colors.grey,
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
              child: LayoutBuilder(
                builder: (context, constrants) =>Row(
                children: [
                  Image.network(food[index].imagurl, height: size.height * 0.1,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(food[index].title, 
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(height: 4.0),
                      Text('\$ ${food[index].price}',
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight : FontWeight.bold
                      ),
                      )
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
                ),)
            ),
          )
      ),
    );
  }
}