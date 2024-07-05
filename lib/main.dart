import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:minimal_chat_wk/services/auth/auth_gate.dart';
import 'package:minimal_chat_wk/firebase_options.dart';
import 'package:minimal_chat_wk/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  //Aqui estamos chamando uma funcao para inicializacao do firebase.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

// done up to this point in the video 3:53 to 01:05:47