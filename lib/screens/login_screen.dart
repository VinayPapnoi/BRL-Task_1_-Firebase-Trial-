import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, EmailPasswordSignup.routeName);
              },
              text: 'Email/Password Sign Up',
            ),
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, EmailPasswordLogin.routeName);
              },
              text: 'Email/Passwork Log in',
            ),
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, PhoneScreen.routeName);
              },
              text: 'Phone Sign In',
            ),
            CustomButton(onTap: () {}, text: 'Google Sign in'),
          ],
        ),
      ),
    );
  }
}
