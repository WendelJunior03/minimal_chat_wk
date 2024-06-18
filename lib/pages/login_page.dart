import 'package:flutter/material.dart';
import 'package:minimal_chat_wk/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  // email and pw text controllers 
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.message,
              color: Theme.of(context).colorScheme.primary,
              size: 60,
            ),

            const SizedBox(height: 50),

            // welcome back message
            Text(
              "Welcome back, you've been missed!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),
             const SizedBox(height: 25),
            // email textfield
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
            ),
            const SizedBox(height: 10),
            // pw textfield
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _pwController,
            ),

            // login button

            // register now

          ],
        ),
      ),
    );
  }
}
