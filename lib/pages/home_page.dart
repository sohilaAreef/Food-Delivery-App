import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/pages/food_details_page.dart';
import 'package:food_delivery/widgets/food_grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset(
                'assets/images/craft-burger-wooden-cutting-board-brown-paper-classic-retro-burgers-creative-ai-design-background-instagram-facebook-325613753.webp',
                height: isLandScape ? size.height * 0.5 : size.height * 0.25,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: size.height * 0.06),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: food.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isLandScape ? 3 : 2,
                mainAxisSpacing: size.height * 0.02,
                crossAxisSpacing: size.width * 0.02,
              ),
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            FoodDetailsPage(foodItem: food[index])));
                  },
                  child: FoodGridItem(foodIndex: index)),
            )
          ],
        ),
      ),
    );
  }
}
