import 'package:flutter/material.dart';
import '../widget/widget.dart';
import '../utils/utils.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/icons/logo.png'),
              width: 100,
            ),
            MyText("Welcome to the Elowen",fontSize: 32, fontWeight: FontWeight.w400,),
            SizedBox(height: 10),
            MyText("Please log in or sign up to continue shopping",fontSize: 16, fontWeight: FontWeight.w400,color: Secondary.grey, ),
          ],
        ),
      ),
    );
  }
}
