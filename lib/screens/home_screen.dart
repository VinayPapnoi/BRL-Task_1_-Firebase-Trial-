import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trial/services/firebase_auth_methods.dart';
import 'package:trial/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<FirebaseAuthMethods>().user;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // centers horizontally
            children: [
              const Text(
                'Email: ',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                user.email!,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Text(
            'Jai Hind Sir',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          /*const SizedBox(height: 30),
          if (!user.emailVerified)
            CustomButton(
              onTap: () {
                context.read<FirebaseAuthMethods>().sendEmailVerification(
                  context,
                );
              },
              text: 'Verify Email',
            ),
          */
          CustomButton(
            onTap: () {
              context.read<FirebaseAuthMethods>().signOut(context);
            },
            text: 'Sign Out',
          ),

          CustomButton(
            onTap: () {
              context.read<FirebaseAuthMethods>().deleteAccount(context);
            },
            text: 'Delete Account',
          ),
          const SizedBox(height: 20),
          
        ],
      ),
    );
  }
}
