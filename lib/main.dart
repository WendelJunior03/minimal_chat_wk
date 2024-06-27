import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:minimal_chat_wk/auth/login_or_register.dart';
import 'package:minimal_chat_wk/firebase_options.dart';
import 'package:minimal_chat_wk/themes/light_mode.dart';

void main() async {
  //Aqui estamos chamando uma funcao para inicializacao do firebase.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: lightMode,
    );
  }
}

// done up to this point in the video 3:53 to 01:05:47