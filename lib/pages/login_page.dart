import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          Icon(
            Icons.message,
            color: Colors.white,
          ),
          // welcome back message

          // e-mail textfield

          // pw tectfield

          //login button

          // registes now
        ],
      ),
    );
  }
}
