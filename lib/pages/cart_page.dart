import 'package:flutter/material.dart';
import '../widget/widget.dart';
import '../utils/utils.dart';
import './checkout_page.dart';


class Cart extends StatelessWidget {
  const Cart({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: MyText('Cart')),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(child: MyText('You have 3 products in your Cart')),
              const SizedBox(height: 20),
              const Image(image: AssetImage('assets/img/cart1.png')),
              const SizedBox(height: 10),
              const Image(image: AssetImage('assets/img/cart2.png')),
              const SizedBox(height: 10),
              const Image(image: AssetImage('assets/img/cart3.png')),
              const SizedBox(height: 40),
              const Row(
                children: [
                  SizedBox(width: 30),
                  Text('Total Price', style: TextStyle(color: Colors.grey, fontSize: 18)),
                  SizedBox(width: 170),
                  Text('133.95\$', style: TextStyle(color: Colors.grey, fontSize: 18)),
                ],            
              ),
              const Row(
                children: [
                  SizedBox(width: 30),
                  Text('Discount', style: TextStyle(color: Colors.grey, fontSize: 18)),
                  SizedBox(width: 195),
                  Text('14.95\$', style: TextStyle(color: Colors.grey, fontSize: 18)),
                ],            
              ),
              const Row(
                children: [
                  SizedBox(width: 30),
                  Text('Estimated delivery fees', style: TextStyle(color: Colors.grey, fontSize: 18)),
                  SizedBox(width: 95),
                  Text('Free', style: TextStyle(color: Colors.grey, fontSize: 18)),
                ],            
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        SizedBox(width: 30),
                        Text('Total:', style: TextStyle(fontSize: 25)),
                        SizedBox(width: 175),
                        Text('119.00\$', style: TextStyle(fontSize: 25)),
                      ]        
                    ),
                    const Row(
                      children: [
                        SizedBox(width: 30),
                        Text('Saving Applied', style: TextStyle(color: Colors.grey, fontSize: 18)),
                        SizedBox(width: 150),
                        Text('14.95\$', style: TextStyle(color: Colors.grey, fontSize: 18)),
                      ]          
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Primary.black),
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 90)),
                      ),
                      icon: const Icon(Icons.shopping_cart_checkout, color: Primary.white,),
                      label: const Text('Checkout', style: TextStyle(color: Primary.white, fontSize: 20),),
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => const Checkout()
                          ),
                        );
                      },
                    ),
                  ]
                ),
              ),
            ]
          ),
        ),
      ),  
    );
  }
}
