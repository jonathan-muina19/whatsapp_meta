import 'package:flutter/material.dart';
import 'package:whatsapp_meta/widgets/uiHelper.dart';

class AuthentificationPages extends StatelessWidget {
  const AuthentificationPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Icon(Icons.more_vert),
          SizedBox(width: 10)
        ],
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Saisissez votre numero de telephone',
            style: TextStyle(
              fontSize: 27,
              color: Colors.white
            ),
            textAlign: TextAlign.center
          ),
          SizedBox(height: 20),
          Uihelper.customText(
            text: 'WhatsApp devra verifier votre numero de', 
            height: 15,
            color: Colors.grey
          ),
          SizedBox(height: 5),
          Uihelper.customText(
            text: "télephone. Des frais peuvent s'appliquer selon", 
            height: 15,
            color: Colors.grey
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Uihelper.customText(
            text: "l'operateur. ", 
            height: 15,
            color: Colors.grey
        ),
          Uihelper.customText(
            text: "Quel est mon numero ?", 
            height: 15,
            color: Colors.blueAccent
        ),
      ],
        )      
        ],
      ),
    );
  }
}