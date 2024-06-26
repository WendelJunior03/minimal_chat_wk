import 'package:flutter/material.dart';
import 'package:minimal_chat_wk/auth/login_or_register.dart';
import 'package:minimal_chat_wk/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: lightMode,
    );
  }
}

// done up to this point in the video 3:53 to 01:05:47