import 'package:flutter/material.dart';
import 'package:whatsapp_meta/widgets/uiHelper.dart';

class ProfileScrenn extends StatelessWidget {
  const ProfileScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Icon(Icons.more_vert_rounded),
          SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Uihelper.customText(
              text: 'Infos du profil', 
              height: 25
            ),
            SizedBox(height: 15),
            Uihelper.customText(
              text: 'Veuillez saisir votre nom et une photo', 
              height: 15,
              color: Colors.grey
            ),
            Uihelper.customText(
              text: 'optionelle pour votre profil', 
              height: 15,
              color: Colors.grey
            ),
            SizedBox(height: 25),
            Stack(
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 17,
                    child: Center(
                      child:
                        Icon(Icons.add, color: Colors.black, size: 25),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 270,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white
                    ),
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:  Colors.green)
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:  Colors.green)
                    ),            
                )
                  ),
                ),
                SizedBox(width: 10),
                Image.asset('assets/images/happy-face 1.png', height: 20)
              ],
            ),
          ],
          
        ),
      ),
      floatingActionButton: Uihelper.customButton(
        callback: (){
          Navigator.pushNamed(context, '/connexion');
        }, 
        buttonName: 'Suivant'
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}