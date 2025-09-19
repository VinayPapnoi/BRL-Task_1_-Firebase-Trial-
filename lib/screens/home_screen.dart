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
          Text(user.email!),

          if (!user.emailVerified)
            CustomButton(
              onTap: () {
                context.read<FirebaseAuthMethods>().sendEmailVerification(
                  context,
                );
              },
              text: 'Verify Email',
            ),

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
        ],
      ),
    );
  }
}
