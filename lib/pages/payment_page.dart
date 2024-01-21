import 'package:flutter/material.dart';
import '../utils/utils.dart';
class Payment extends StatelessWidget {
  const Payment({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Primary.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100.0),
            const Icon(Icons.check_circle_outline,color: Colors.green,size: 70,),
            const Text('Payment successful!', style: TextStyle(fontSize: 40),),
            const Text('Order number: 24587745633248', style: TextStyle(color: Colors.grey,fontSize: 20)),
            const Text('Thank you for shopping!', style: TextStyle(color: Colors.grey,fontSize: 20)),
            const SizedBox(height: 40.0),
            ElevatedButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Primary.black), foregroundColor: MaterialStatePropertyAll(Primary.white),),              
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              }, 
              child: const Text('Continue', style: TextStyle(fontSize: 25),),
            ),
          ]
        ),
      ),
    );
  }
}