import 'package:flutter/material.dart';
import '../utils/utils.dart';
import '../widget/widget.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: MyText("Favourites")),
        backgroundColor: Primary.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Primary.black,
          ),
        ],
      ),
      body:  SingleChildScrollView(
        child:  Center(
          child: Wrap(
            spacing: 10,
            runSpacing: 1,
            children: [
              Column(
                children: [
                  const Image(image: AssetImage('assets/img/sold3.png')),
                  ElevatedButton.icon(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Primary.black),
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20,vertical: 4)),
                      ),
                    onPressed:(){},
                    icon: const Icon(Icons.shopping_cart_outlined, color: Primary.white,),
                    label: const Text('Add to cart',style: TextStyle(color: Primary.white),),
                  ),
                ],
              ), 
              Column(
                children: [
                  const Image(image: AssetImage('assets/img/sold1.png')),
                  ElevatedButton.icon(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Primary.black),
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20,vertical: 4)),
                      ),
                    onPressed:(){},
                    icon: const Icon(Icons.shopping_cart_outlined, color: Primary.white,),
                    label: const Text('Add to cart',style: TextStyle(color: Primary.white),),
                  ),
                ],
              ),
              Column(
                children: [
                  const Image(image: AssetImage('assets/img/sold.png')),
                  ElevatedButton.icon(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Primary.black),
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20,vertical: 4)),
                      ),
                    onPressed:(){},
                    icon: const Icon(Icons.shopping_cart_outlined, color: Primary.white,),
                    label: const Text('Add to cart',style: TextStyle(color: Primary.white),),
                  ),
                ],
              ),
              Column(
                children: [
                  const Image(image: AssetImage('assets/img/sold4.png')),
                  ElevatedButton.icon(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Primary.black),
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20,vertical: 4)),
                      ),
                    onPressed:(){},
                    icon: const Icon(Icons.shopping_cart_outlined, color: Primary.white,),
                    label: const Text('Add to cart',style: TextStyle(color: Primary.white),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
