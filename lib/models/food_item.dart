class FoodItem {
  final String title;
  final String imagurl;
  final double price;
  final bool isFavorite;

  FoodItem({required this.title, required this.imagurl, required this.price, this.isFavorite = false});

  FoodItem copyWith({String? title, String? imagurl, double? price, bool? isFavorite})
{
  return FoodItem(
    imagurl: imagurl ?? this.imagurl,
    title  : title ?? this.title,
    price: price ?? this.price,
    isFavorite: isFavorite ?? this.isFavorite);
}
}


List <FoodItem> food = [
  FoodItem(title: 'Burgers', imagurl: 'https://pngimg.com/d/burger_sandwich_PNG4135.png', price: 10.0),
  FoodItem(title: 'Pizza', imagurl: 'https://t3.ftcdn.net/jpg/07/70/75/16/360_F_770751689_FZdxDkfXHjeKTK4C49yapEIkiuafVJEY.jpg', price: 15.0,),
  FoodItem(title: 'Pasta', imagurl: 'https://e7.pngegg.com/pngimages/94/423/png-clipart-pasta-pasta.png', price: 12.0),
  FoodItem(title: 'Salad', imagurl: 'https://w7.pngwing.com/pngs/650/1008/png-transparent-greek-salad-caesar-salad-wrap-bean-salad-pasta-salad-salad-vegetable-salad-leaf-vegetable-food-recipe-thumbnail.png', price: 8.0),
  FoodItem(title: 'Sandwich', imagurl: 'https://w7.pngwing.com/pngs/1018/614/png-transparent-chicken-sandwich-cheese-sandwich-vegetable-sandwich-submarine-sandwich-hamburger-jamon-food-breakfast-recipe-thumbnail.png', price: 6.0),
  FoodItem(title: 'Sushi', imagurl: 'https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDI0LTAxL3Jhd3BpeGVsX29mZmljZV80Nl9hX3Bob3RvX29mX3N1c2hpX2phcGFuZXNlX2Zvb2RfaXNvbGF0ZWRfb25fd19hZjA3MDQ5Ny0zY2YzLTRjMjUtYjFhYy1jMmJiMzJlZGE2YWUucG5n.png', price: 20.0),
  FoodItem(title: 'Tacos', imagurl: 'https://e7.pngegg.com/pngimages/744/579/png-clipart-taco-mexican-cuisine-salsa-breakfast-jack-keaton-s-bbq-bar-tacos-sliced-lemon-food-recipe-thumbnail.png', price: 10.0),
  FoodItem(title: 'Waffles', imagurl: 'https://img.pikbest.com/origin/09/23/46/77QpIkbEsTncX.png!sw800', price: 5.0),
];