import 'package:flutter/material.dart';
import '../utils/utils.dart';
import '../widget/widget.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText("                     Details"),
        backgroundColor: Primary.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15,),
              const Row(children: [SizedBox(width: 8),Heading(text:'Account Information')]),
              const SizedBox(height:10),
              const Row(children: [SizedBox(width: 8),Text('Email:  dmitriy.divnov@gmail.com', style: TextStyle(fontSize: 17)),],),
              const SizedBox(height:10),
              const Row(children: [SizedBox(width: 8),Text('Name:  Dmitriy Divnov', style: TextStyle(fontSize: 17)),],),
              const SizedBox(height:10),
              const Row(children: [SizedBox(width: 8),Text('Date of birthday:  -', style: TextStyle(fontSize: 17)),],),
              const SizedBox(height:10),
              const Row(children: [SizedBox(width: 8),Text('Address:  Brest, Belarus', style: TextStyle(fontSize: 17)),],),
              const SizedBox(height:10),
              const Row(children: [SizedBox(width: 8),Text('Phone: +24589706423', style: TextStyle(fontSize: 17)),],),
              const SizedBox(height: 40,),
              ElevatedButton(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 140)),
                ),
                child: const Text('Edit', style: TextStyle(fontSize: 17, color: Primary.black),),
                onPressed: (){}
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 90)),
                ),
                child: const Text('Change Password', style: TextStyle(fontSize: 17, color: Primary.black),),
                onPressed: (){}
              ),
              
            ]
          )
        )
      )
    );
  }
}