import 'package:flutter/material.dart';
import 'package:whatsapp_meta/widgets/uiHelper.dart';

class ConnexionScreen extends StatelessWidget {
  const ConnexionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Icon(Icons.group_add_outlined,color: Colors.green, size: 80),
            SizedBox(height:20),
            Uihelper.customText(text: 'Connectez-vous en toute', height: 25),
            Uihelper.customText(text: 'sécurité et protégez votre', height: 25),
            Uihelper.customText(text: 'compte', height: 25
          ),
        SizedBox(height:20),
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
          ),
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(Icons.verified_user_outlined,color: Colors.grey,
              size: 30
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.customText(
                    text: "Créez une clé d'acces pour vous ", 
                    height: 17,
                    fontweight: FontWeight.normal
                  ),
                  SizedBox(height: 5),
                  Uihelper.customText(
                    text: "connecter facilement et en toute", 
                    height: 17,
                    color: Colors.white
                  ),
                  SizedBox(height: 5),
                  Uihelper.customText(
                    text: 'sécurité a votre compte.', 
                    height: 17,
                    color: Colors.white
                  ),
                  SizedBox(height: 0),
                ],
              )
            )

            ],
          ),
         ),
          Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
          ),
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(Icons.fingerprint,color: Colors.grey,
              size: 30
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.customText(
                    text: "Utilisez votre empreinte digitale, ", 
                    height: 17,
                    fontweight: FontWeight.normal
                  ),
                  SizedBox(height: 5),
                  Uihelper.customText(
                    text: "la reconnaissance faciale ou le verouillage d'ecran pour vous ", 
                    height: 17,
                    color: Colors.white
                  ),
                  SizedBox(height: 5),
                  Uihelper.customText(
                    text: 'connecter a whatsApp.', 
                    height: 17,
                    color: Colors.white
                  ),
                  SizedBox(height: 0),
                ],
              )
            )

            ],
          ),
         ),
          Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
          ),
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(Icons.phonelink_outlined,color: Colors.grey,
              size: 30
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.customText(
                    text: "Créez une clé d'acces pour vous ", 
                    height: 17,
                    fontweight: FontWeight.normal
                  ),
                  SizedBox(height: 5),
                  Uihelper.customText(
                    text: "connecter facilement et en toute", 
                    height: 17,
                    color: Colors.white
                  ),
                  SizedBox(height: 5),
                  Uihelper.customText(
                    text: 'sécurité a votre compte.', 
                    height: 17,
                    color: Colors.white
                  ),
                  SizedBox(height: 5),
                ],
              )
            )

            ],
          ),
         ),
         SizedBox(height:10),
         Uihelper.customButton(
          callback: (){
            Navigator.pushNamed(context, '/chat_screen');
          }, 
          buttonName: 'Continuer'
        ),
        TextButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          child: Uihelper.customText(text: 'Ignorer', height: 18, color: Colors.green))
      ],
          
        ),
      ),
    );
  }
}