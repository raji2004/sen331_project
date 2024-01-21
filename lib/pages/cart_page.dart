import 'package:flutter/material.dart';
import '../widget/widget.dart';
import '../utils/utils.dart';

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
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: MyText('You have 3 products in your Cart')),
              SizedBox(height: 20),
              Image(image: AssetImage('assets/img/cart1.png')),
              SizedBox(height: 10),
              Image(image: AssetImage('assets/img/cart2.png')),
              SizedBox(height: 10),
              Image(image: AssetImage('assets/img/cart3.png')),
              SizedBox(height: 40),
              Row(
                children: [
                  SizedBox(width: 30),
                  Text('Total Price', style: TextStyle(color: Colors.grey, fontSize: 18)),
                  SizedBox(width: 170),
                  Text('133.95\$', style: TextStyle(color: Colors.grey, fontSize: 18)),
                ],            
              ),
              Row(
                children: [
                  SizedBox(width: 30),
                  Text('Discount', style: TextStyle(color: Colors.grey, fontSize: 18)),
                  SizedBox(width: 195),
                  Text('14.95\$', style: TextStyle(color: Colors.grey, fontSize: 18)),
                ],            
              ),
              Row(
                children: [
                  SizedBox(width: 30),
                  Text('Estimated delivery fees', style: TextStyle(color: Colors.grey, fontSize: 18)),
                  SizedBox(width: 95),
                  Text('Free', style: TextStyle(color: Colors.grey, fontSize: 18)),
                ],            
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 30),
                        Text('Total:', style: TextStyle(fontSize: 25)),
                        SizedBox(width: 175),
                        Text('119.00\$', style: TextStyle(fontSize: 25)),
                      ]        
                    ),
                    Row(
                      children: [
                        SizedBox(width: 30),
                        Text('Saving Applied', style: TextStyle(color: Colors.grey, fontSize: 18)),
                        SizedBox(width: 150),
                        Text('14.95\$', style: TextStyle(color: Colors.grey, fontSize: 18)),
                      ]          
                    ),
                    SizedBox(height: 20),
                    Image(image: AssetImage('assets/img/checkout.png'))
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
