import 'package:flutter/material.dart';
import 'package:minimal_chat_wk/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            const MyTextField(
              hintText: "Email",
              obscureText: false,
            ),
            const SizedBox(height: 10),
            // pw textfield
            const MyTextField(
              hintText: "Password",
              obscureText: true,
            ),

            // login button

            // register now

          ],
        ),
      ),
    );
  }
}
