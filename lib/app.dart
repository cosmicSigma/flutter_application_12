import 'package:flutter/material.dart';
import 'package:flutter_application_12/features/auth/presentation/screens/sign_up_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUpScreen(),
    );
  }
}