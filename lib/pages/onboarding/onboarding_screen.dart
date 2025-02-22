import 'package:flutter/material.dart';
import 'package:whatsapp_meta/widgets/uiHelper.dart';

class OnboardingScreen extends StatefulWidget {

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // ignore: unused_element
  _languageMenu(){
    DraggableScrollableSheet(
      builder: (context, controller){
        return Container(
          child: ListView.builder(
            itemCount: 15,
            controller: controller,
            itemBuilder:(BuildContext context, index){
              return ListTile(
                title: Uihelper.customText(
                  text: 'item ${index+1}', 
                  height: 12),
              );
            } 
          ),
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // Deplacer l'icone a droite
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.more_vert))
        ],
      ),
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
                  text: 'Politique de confidentialité.', 
                  height: 14,
                  color: Colors.blueAccent
                ),
              ],
            ),
            Uihelper.customText(
              text: 'Appuyez sur "Accepter et continuer" pour ', 
              height: 14,
              color: Colors.grey
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Uihelper.customText(
              text: 'accepter les', 
              height: 14,
              color: Colors.grey
            ),
            Uihelper.customText(
              text: " Conditions d'utilisation", 
              height: 14,
              color: Colors.blueAccent
            )
          ],
        ),
      SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(
            overlayColor: Colors.transparent,
              //minimumSize: Size(50, 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              padding: EdgeInsets.symmetric(horizontal:40, vertical: 20),
               // Set minimum size to zero
              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Shrink the tap target size
              ),
          onPressed: (){
            _languageMenu();
          }, 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.language,
              color: Color(0XFF00A884),
              size: 20
            ),
            SizedBox(width: 8),
            Uihelper.customText(
              text: 'Francais',
              height: 17,
              color: Color(0XFF00A884),
            ),
            SizedBox(width: 8),
            Icon(Icons.arrow_downward_outlined, color: Color(0XFF00A884)),
            
            ],
          )
        ),
        SizedBox(height: 30),
        Uihelper.customButton(
          callback: (){
            Navigator.pushNamed(context, '/authenfication');
          }, 
          buttonName: 'Accepter et continuer',
          
          ) 
          ], 
        ),
      ),
    );
  }
} 