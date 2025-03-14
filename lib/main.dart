import 'package:flutter/material.dart';
import 'package:whatsapp_meta/pages/authentification/authentification.dart';
import 'package:whatsapp_meta/pages/connexion_secure/connexion_screen.dart';
import 'package:whatsapp_meta/pages/profile/profile_screnn.dart';
import 'package:whatsapp_meta/pages/splash/splash_screen.dart';
import 'package:whatsapp_meta/pages/verify_number/verify_number.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
         appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0XFF00A884)
        ),
        useMaterial3: false
      ),
      home: SplashScreen(),
      routes: {
        '/authenfication':(context)=>AuthentificationPages(),
        '/verify_number' : (context)=> VerifyNumber(),
        '/profile' : (context)=>ProfileScrenn(),
        '/connexion' : (context)=>ConnexionScreen()
      },
    );
  }
}