import 'package:dose_calculator/screens/calculator_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class MainPage  extends StatelessWidget{
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if (snapshot.hasData) {
            return CalculatorScreen();
          } else {
            return LoginScreen();
          }
        }
      ),
    );
  }
}