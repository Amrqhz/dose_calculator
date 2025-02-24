import 'package:dose_calculator/screens/about_screen.dart';
import 'package:dose_calculator/screens/main_page.dart';
import 'package:dose_calculator/screens/shoping_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/calculator_screen.dart';
import '../data/user_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ); 
  } catch (e) { print('Failed to initialize Firebase: $e');}


  runApp(
    ChangeNotifierProvider(
      create: (_) => UserDataProvider(),
      child: MyApp(), ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drug Dose Calculator',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFF90A4AE),
        textTheme: GoogleFonts.robotoTextTheme(
          const TextTheme(bodyLarge: TextStyle(fontWeight: FontWeight.bold, color: Colors.black) )
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromARGB(255, 93, 109, 117),
        textTheme: GoogleFonts.robotoTextTheme(
          const TextTheme(bodyLarge: TextStyle(fontWeight: FontWeight.bold, color: Colors.black))

        ),
      ),
      home:  CalculatorScreen(),
      routes: {
        '/login': (context) =>  LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/calculator': (context) =>  CalculatorScreen(),
        '/about': (context) => AboutScreen(),
        '/shoping': (context) => ShopingScreen(),
        '/mainpage': (context) => MainPage()
      },
    );
  }
}