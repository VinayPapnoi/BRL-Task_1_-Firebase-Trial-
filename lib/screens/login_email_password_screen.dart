import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trial/services/firebase_auth_methods.dart';
import 'package:trial/widgets/custom_textfield.dart';

class EmailPasswordLogin extends StatefulWidget {
  static String routeName = '/login-email-password';
  const EmailPasswordLogin({super.key});

  @override
  _EmailPasswordLoginState createState() => _EmailPasswordLoginState();
}

class _EmailPasswordLoginState extends State<EmailPasswordLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _isLoading = false;

  @override
  void dispose() {
    emailController.dispose();     
    passwordController.dispose();  
    super.dispose();              
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });

    await context.read<FirebaseAuthMethods>().loginWithEmail(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
          context: context,
        );

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(fontSize: 30),
            ),
            CustomTextField(controller: emailController, hintText: 'Email'),
            CustomTextField(controller: passwordController, hintText: 'Password'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isLoading ? null : loginUser,
              child: _isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
