import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_training/core/constants.dart';
import 'package:project_training/features/auth/presentation/sign_in_screen.dart';
import 'package:project_training/features/auth/presentation/sign_up_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reels App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        useMaterial3: true,
      ),
      home: const SignUpScreen(),
    );
  }
}
