import 'package:flutter/material.dart';
import 'package:sen331_project/widget/widget.dart';
// ignore: unused_import
import '../pages/pages.dart';

class CartOptions extends StatefulWidget {
  const CartOptions({
    super.key,
    required this.img,
    required this.price,
    required this.name,
    required this.onPressed,
  });

  final String img;
  final dynamic price;
  final String name;
  final VoidCallback onPressed;

  @override
  State<CartOptions> createState() => _CartOptionsState();
}

class _CartOptionsState extends State<CartOptions> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image(
            image: AssetImage(widget.img),
            width: 100,
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyText(widget.name, fontSize: 12),
                MyText('#${widget.price}', fontSize: 16),
              ],
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed:widget.onPressed,
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
