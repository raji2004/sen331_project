import 'package:flutter/material.dart';
import '../widget/widget.dart';
import '../utils/utils.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: MyText('AMYs Clothing Store')),
        backgroundColor: Primary.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Primary.black,
          ),
        ],
        shadowColor: Primary.white,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Categories(),
              SizedBox(height: 20),
              Image(image: AssetImage('assets/img/hero.png')),
              SizedBox(height: 20),
              Heading(text: "Categories"),
              SizedBox(height: 10),
              ClothTypes(),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    ClothOptions(img: 'assets/img/pic1.png'),
                    ClothOptions(img: 'assets/img/pic2.png'),
                    ClothOptions(img: 'assets/img/pic3.png'),
                    ClothOptions(img: 'assets/img/pic4.png'),
                    ClothOptions(img: 'assets/img/pic1.png'),
                    ClothOptions(img: 'assets/img/pic2.png'),
                    ClothOptions(img: 'assets/img/pic3.png'),
                    ClothOptions(img: 'assets/img/pic4.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClothTypes extends StatelessWidget {
  const ClothTypes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          MyText("All"),
          SizedBox(width: 10),
          MyText("Dresses"),
          SizedBox(width: 10),
          MyText("Jackets & Blazers"),
          SizedBox(width: 10),
          MyText("Shirts"),
          SizedBox(width: 10),
          MyText("Pants & Jeans"),
          SizedBox(width: 10),
          MyText("Shorts"),
          SizedBox(width: 10),
          MyText("Skirts & Dresses"),
          SizedBox(width: 10),
          MyText("lingerie"),
          SizedBox(width: 10),
          MyText("boxers"),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Image(image: AssetImage('assets/img/cloth1.png')),
          SizedBox(width: 20),
          Image(image: AssetImage('assets/img/cloth2.png')),
          SizedBox(width: 20),
          Image(image: AssetImage('assets/img/cloth3.png')),
          SizedBox(width: 20),
          Image(image: AssetImage('assets/img/cloth1.png')),
          SizedBox(width: 20),
          Image(image: AssetImage('assets/img/cloth3.png')),
          SizedBox(width: 20),
          Image(image: AssetImage('assets/img/cloth1.png')),
          SizedBox(width: 20),
          Image(image: AssetImage('assets/img/cloth3.png')),
          SizedBox(width: 20),
          Image(image: AssetImage('assets/img/cloth1.png')),
          SizedBox(width: 20),
          Image(image: AssetImage('assets/img/cloth3.png')),
          Image(image: AssetImage('assets/img/cloth1.png')),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
