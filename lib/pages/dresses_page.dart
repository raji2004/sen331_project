import 'package:flutter/material.dart';
import '../utils/utils.dart';
import '../widget/widget.dart';

class Dresses extends StatelessWidget {
  const Dresses({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: MyText("Dresses")),
        backgroundColor: Primary.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Primary.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Primary.black,
          ),
        ],
      ),
      body:  const SingleChildScrollView(
        child:  Center(
          child: Wrap(
            spacing: 10,
            runSpacing: 1,
            children: [
              Image(image: AssetImage('assets/img/sold.png')),
              Image(image: AssetImage('assets/img/sold1.png')),
              Image(image: AssetImage('assets/img/sold3.png')),
              Image(image: AssetImage('assets/img/sold4.png')),
              Image(image: AssetImage('assets/img/sold1.png')),
              Image(image: AssetImage('assets/img/sold.png')),
              Image(image: AssetImage('assets/img/sold.png')),
            ],
          ),
        ),
      ),
    );
  }
}
