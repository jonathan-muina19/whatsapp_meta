import 'package:flutter/material.dart';
import 'package:whatsapp_meta/widgets/uiHelper.dart';

class VerifyNumber extends StatelessWidget {
  const VerifyNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.more_vert),
          SizedBox(width: 10)
        ],
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.phone_missed_rounded,
          color: Color(0XFF25D366), size: 100),
          Uihelper.customText(
            text: 'Pour une verification', 
            height: 23
          ),
          Uihelper.customText(
            text: 'automatique avec un ', 
            height: 23
          ),
          Uihelper.customText(
            text: 'appel interompu sur votre', 
            height: 23
          ),
          Uihelper.customText(
            text: 'télephone :', 
            height: 25
          ),
          SizedBox(height: 30),
         Container(
          
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
            
          ),
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(Icons.call_outlined,color: Color(0XFF25D366),
              size: 24
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.customText(
                    text: 'Autorisez WhatsAppa gerer cet appel afin', 
                    height: 15,
                    fontweight: FontWeight.bold
                  ),
                  SizedBox(height: 5),
                  Uihelper.customText(
                    text: 'que nous puissions appeler votre numero', 
                    height: 14,
                    color: Colors.grey
                  ),
                  SizedBox(height: 5),
                  Uihelper.customText(
                    text: 'de telephone et mettre automatiquement', 
                    height: 14,
                    color: Colors.grey
                  ),
                  SizedBox(height: 5),
                  Uihelper.customText(
                    text: "fin l'appel", 
                    height: 14,
                    color: Colors.grey
                  ),
                ],
              )
            )

            ],
          ),
         ),
         SizedBox(height: 0),

        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
            
          ),
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(Icons.phone_paused_outlined,color: Color(0XFF25D366),
              size: 24
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.customText(
                    text: 'Autorisez WhatsAppa gerer cet appel afin', 
                    height: 15,
                    fontweight: FontWeight.bold
                  ),
                  SizedBox(height: 5),
                  Uihelper.customText(
                    text: 'que nous puissions appeler votre numero', 
                    height: 14,
                    color: Colors.grey
                  ),
                  SizedBox(height: 5),
                  Uihelper.customText(
                    text: 'de telephone et mettre automatiquement', 
                    height: 14,
                    color: Colors.grey
                  ),
                  SizedBox(height: 5),
                  Uihelper.customText(
                    text: "fin l'appel", 
                    height: 14,
                    color: Colors.grey
                  ),
                ],
              )
            )

            ],
          ),
         ),
         SizedBox(height: 10),
         Uihelper.customText(
          text: 'En savoir plus sur la facon de gerer vos', 
          height: 13,
          color: Colors.grey
        ),
        Uihelper.customText(
          text: 'autorisations de verification de telephone', 
          height: 13,
          color: Color(0XFF34B7F1)
        ),
        SizedBox(height: 97),
        Uihelper.customButton(
          callback: (){}, 
          buttonName: 'Continuer',
        ),
        TextButton(
          
          onPressed: (){}, 
          child: Uihelper.customText(
            fontweight: FontWeight.bold,
            text: 'Confirmer autrement', 
            height: 15,
            color: Color(0XFF25D366) ,
          )
        )

        ],
        ),
      ),
    );
  }
}