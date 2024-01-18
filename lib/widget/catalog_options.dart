import 'package:flutter/material.dart';
import 'package:sen331_project/widget/widget.dart';

class CatalogOptions extends StatelessWidget {
  final String imgPath;
  final String text;
  final VoidCallback onPressed;
  const CatalogOptions({
    super.key,
    this.imgPath = 'assets/img/catalog1.png',
    required this.text,
   required this.onPressed 
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
    
      onTap: onPressed,
    
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(imgPath)),
         const SizedBox(height: 10),
          MyText(text),
        ],
      ),
    );
  }
}
