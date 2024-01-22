import 'package:flutter/material.dart';
import '../widget/widget.dart';
import '../utils/utils.dart';
// ignore: unused_import
import '../pages/pages.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ClothOptions extends StatefulWidget {
  final String img;
  final double price;
  final String name;
  const ClothOptions({
    super.key,
    this.img = 'assets/img/sold.png',
    this.price = 79.95,
    this.name = 'CLAUDETTE CORSET SHIRT DRESS IN WHITE',
  });

  @override
  State<ClothOptions> createState() => _ClothOptionsState();
}


 

class _ClothOptionsState extends State<ClothOptions> {
  bool isFavorite = false;

   Future<bool> addToCart(String cartOption) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String>? currentItems = prefs.getStringList('cart');
    currentItems ??= [];

    // Add the cartOption string to the current items list
    currentItems.add(cartOption);
    debugPrint(currentItems.toString());

    await prefs.setStringList('cart', currentItems);
    // Trigger a rebuild of the widget
    setState(() {});
    debugPrint("true");
    return true;
  }
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(widget.img)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText('#${widget.price}'),
              IconButton(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                  color: isFavorite ? AppColors.red : null,
                ),
              ),
            ],
          ),
          MyText(widget.name, fontSize: 12),
          const SizedBox( height: 10,),
           ButtonWithIcon(
            icon: const Icon(Icons.shopping_cart_outlined),
            text: "Add to cart",
            backgroundColor: Primary.black,
            textColor: Primary.white,
            horizontal: 18,
            vertical: 10,
            onPressed: (){
              addToCart(widget.img);
            },
          )
        ],
      ),
    );
  }
}
