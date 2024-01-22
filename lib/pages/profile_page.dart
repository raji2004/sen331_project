import 'package:flutter/material.dart';
import 'package:sen331_project/pages/details_page.dart';
import '../utils/utils.dart';
import '../widget/widget.dart';
import './registration_page.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: MyText("My account")),
        backgroundColor: Primary.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Primary.black,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(children: [SizedBox(width: 8),Heading(text:'Activity')]),
              const SizedBox(height: 15,),
              Row(
                children: [
                  const SizedBox(width: 8),
                  ElevatedButton.icon(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Primary.black),
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20, vertical: 25)),
                      ),
                      icon: const Icon(Icons.person_outline, color: Primary.white,),
                      label: const Text('Details', style: TextStyle(color: Primary.white, fontSize: 15),),
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => const Details())
                        );
                      },
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton.icon(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Primary.black),
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20, vertical: 25)),
                      ),
                      icon: const Icon(Icons.shopping_bag_outlined, color: Primary.white,),
                      label: const Text('Orders', style: TextStyle(color: Primary.white, fontSize: 15),),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton.icon(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Primary.black),
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20, vertical: 25)),
                      ),
                      icon: const Icon(Icons.star_border, color: Primary.white,),
                      label: const Text('Reviews', style: TextStyle(color: Primary.white, fontSize: 15),),
                      onPressed: () {},
                    ),
                ],
              ),
              const SizedBox(height: 30,),
              const Row(children: [SizedBox(width: 8),Heading(text:'Community',)]),
              const SizedBox(height: 15,),
              const Row(children: [SizedBox(width: 8),Icon(Icons.supervisor_account_outlined),Text('  Community influencer program', style: TextStyle(fontSize: 15),)]),
              const SizedBox(height: 30,),
              const Row(children: [SizedBox(width: 8),Heading(text:'Support',)]),
              const SizedBox(height: 15,),
              const Row(children: [
                SizedBox(width: 10),Icon(Icons.help_outline),Text('  FAQ', style: TextStyle(fontSize: 15),),
                SizedBox(width: 180),Icon(Icons.chat_bubble_outline_rounded),Text('  Chat with us', style: TextStyle(fontSize: 15),)
              ]),
              const SizedBox(height: 10,),
              Row(children: [
                const SizedBox(width: 8),const Icon(Icons.verified_user_outlined),const Text('  Privacy policy', style: TextStyle(fontSize: 15),),
                const SizedBox(width: 115),Image.asset('assets/icons/about.png', width: 22,height: 22,),const Text('  About us', style: TextStyle(fontSize: 15),)              
              ]),
              const SizedBox(height: 10,),
              const Row(children: [
                SizedBox(width: 8),Icon(Icons.lock_outline),Text('  Intellectual property', style: TextStyle(fontSize: 15),),
              ]),
              const SizedBox(height: 30,),
              const Row(children: [SizedBox(width: 8),Heading(text:'Settings',)]),
              const SizedBox(height: 15,),
              Row(children: [const SizedBox(width: 8),Image.asset('assets/icons/globe.png', width: 22,height: 22,),const Text('  Location & Language', style: TextStyle(fontSize: 15),)]),
  	          const SizedBox(height: 30,),
              ElevatedButton(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 110)),
                ),
                child: const Text('Log out', style: TextStyle(fontSize: 17, color: Primary.black),),
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const RegistrationPage()));
                }
              ),

            ]
          ),
        ),
      ),
    );
  }
}  