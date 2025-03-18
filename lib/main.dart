import 'package:flutter/material.dart';
import 'package:whatsapp_meta/pages/Home/home_screen.dart';
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
        colorSchemeSeed: Colors.green,
        //primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
         appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
      
      ),
      home: SplashScreen(),
      routes: {
        '/authenfication':(context)=>AuthentificationPages(),
        '/verify_number' : (context)=> VerifyNumber(),
        '/profile' : (context)=>ProfileScrenn(),
        '/connexion' : (context)=>ConnexionScreen(),
        '/chat_screen' : (context)=>HomeScreen
        ()
      },
    );
  }
}