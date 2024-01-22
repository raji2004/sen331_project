import 'package:flutter/material.dart';
import 'package:sen331_project/widget/widget.dart';
import '../utils/utils.dart';

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
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          MyText(widget.name, fontSize: 12)
        ],
      ),
    );
  }
}
