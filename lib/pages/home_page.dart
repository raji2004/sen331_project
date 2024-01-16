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
              Heading(text: "Categories")
            ],
          ),
        ),
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
