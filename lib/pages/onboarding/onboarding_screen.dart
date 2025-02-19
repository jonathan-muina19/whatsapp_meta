import 'package:flutter/material.dart';
import 'package:whatsapp_meta/widgets/uiHelper.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150,
              backgroundImage:AssetImage('assets/images/screen.jpg')
            ),
            SizedBox(height: 30),
            Uihelper.customText(
              text: 'Bienvenue sur WhatsApp', 
              height: 30,
              color: const Color.fromARGB(255, 253, 255, 254)
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(
                  text: 'Veuillez lire notre ', 
                  height: 14,
                  fontweight: FontWeight.normal,
                  color: Colors.grey
              ),
                Uihelper.customText(
                  text: 'Politique de confidentialité', 
                  height: 14,
                  color: Colors.blueAccent)
              ],
            )
          ], 
        ),
      ),
    );
  }
}