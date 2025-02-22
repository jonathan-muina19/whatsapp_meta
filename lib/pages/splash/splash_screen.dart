import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_meta/pages/onboarding/onboarding_screen.dart';
import 'package:whatsapp_meta/widgets/uiHelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()
      ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/images/whatsapp.png',
                height: 75,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child:Uihelper.customText(
                  text: 'from', 
                  height: 15,
                  color: const Color.fromARGB(255, 74, 76, 92),
                ), 
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image.asset('assets/images/meta.png',
                    height: 20,
                ),
                Uihelper.customText(
                  text: ' Meta', 
                  height: 20,
                  color: Colors.white,
                  fontweight: FontWeight.normal
                )
                 ],
               )
            ],
          ),
         
        ],
      ),
    );
  }
}