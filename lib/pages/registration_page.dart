import 'package:flutter/material.dart';
import '../widget/widget.dart';
import '../utils/utils.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/icons/logo.png'),
              width: 100,
            ),
            const MyText(
              "Welcome to the Elowen",
              fontSize: 32,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 10),
            const MyText(
              "Please log in or sign up to continue shopping",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Secondary.grey,
            ),
            const SizedBox(height: 30),
            const ButtonWithIcon(
              icon: Image(image: AssetImage('assets/icons/google.png')),
              text: 'continue with google',
              horizontal: 80,
            ),
            const SizedBox(height: 10),
            const ButtonWithIcon(
              icon: Image(image: AssetImage('assets/icons/facebook.png')),
              text: 'continue with facebook',
              horizontal: 70,
              backgroundColor: AppColors.blue,
            ),
            const SizedBox(height: 10),
            const ButtonWithIcon(
              icon: Image(image: AssetImage('assets/icons/apple.png')),
              text: 'continue with apple',
              horizontal: 90,
              backgroundColor: Primary.black,
              textColor: Primary.white,
            ),
            const SizedBox(height: 30),
            const LineWithText(),
            const SizedBox(height: 30),
            Button(
              text: "sign in with us",
              onPressed: () {},
              backgroundColor: Primary.black,
              horizontal: 110,
            )
          ],
        ),
      ),
    );
  }
}

class LineWithText extends StatelessWidget {
  const LineWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Rectangle(width: 150, height: 1),
          SizedBox(width: 10),
          MyText("or", fontSize: 20),
          SizedBox(
            width: 10,
          ),
          Rectangle(width: 150, height: 1)
        ],
      ),
    );
  }
}
