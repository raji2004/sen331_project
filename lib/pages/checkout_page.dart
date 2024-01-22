import 'package:flutter/material.dart';
import 'package:sen331_project/pages/pages.dart';
import '../widget/widget.dart';
import '../utils/utils.dart';
import './payment_page.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText('                 Checkout'),
        backgroundColor: Primary.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Primary.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ), 
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              const Heading(text: 'Payment'),
              const SizedBox(height: 15.0),
              const Image(image: AssetImage('assets/img/mastercard.png')),
              const SizedBox(height: 10.0),
              const Image(image: AssetImage('assets/img/paypal.png')),
              const SizedBox(height: 10.0),
              const Image(image: AssetImage('assets/img/applepay.png')),
              const SizedBox(height: 20.0),
              const Image(image: AssetImage('assets/img/creditcard.png')),
              const SizedBox(height:20.0),
              const Row(
                children: [
                  SizedBox(width: 30),
                  Text('Shipping Information', style: TextStyle(fontSize: 23)),
                  SizedBox(width: 85),
                  Text('Edit', style: TextStyle(fontSize: 17,color: Colors.grey,)),
                ]       
              ),
              const Row(children: [
                SizedBox(width: 30),
                Text('Dmitiry Divnov', style: TextStyle(fontSize: 17,color: Colors.grey,))
              ]),
              const Row(children: [
                SizedBox(width: 30),
                Text('Brest, Belarus', style: TextStyle(fontSize: 17,color: Colors.grey,))
              ]),
              const Row(children: [
                SizedBox(width: 30),
                Text('+24589706423', style: TextStyle(fontSize: 17,color: Colors.grey,))
              ]),
              const SizedBox(height: 25.0,),
              const Row(
                children: [
                  SizedBox(width: 30),
                  Text('Total:', style: TextStyle(fontSize: 25)),
                  SizedBox(width: 175),
                  Text('119.00\$', style: TextStyle(fontSize: 25)),
                ]        
              ),
              const SizedBox(height: 20.0,),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Primary.black), foregroundColor: MaterialStatePropertyAll(Primary.white),
                  padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 90)),
                ),                  
                onPressed:() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const Payment()
                    ),
                  );
                }, 
                child: const Text('Pay',style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}        