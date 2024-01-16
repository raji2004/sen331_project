import 'package:flutter/material.dart';
import '../widget/widget.dart';
import '../utils/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/icons/logo.png'),
                width: 100,
              ),
              const MyText(
                "Create Your Account",
                fontSize: 32,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(height: 10),
              const InputBox(
                placeHolder: "Email",
                prefixIcon: Icon(Icons.email),
              ),
              const InputBox(
                placeHolder: "Password",
                prefixIcon: Icon(Icons.lock),
                isPassword: true,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: CheckBox("Remember me"),
              ),
              const SizedBox(height: 60),
              Button(
                text: "sign Up",
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomNavBar()),
                );
                },
                backgroundColor: Primary.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
