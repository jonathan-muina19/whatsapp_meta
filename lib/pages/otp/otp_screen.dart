import 'package:flutter/material.dart';
import 'package:whatsapp_meta/widgets/uiHelper.dart';

// ignore: must_be_immutable
class OtpScreen extends StatefulWidget {
  String telephone;
  OtpScreen({super.key, required this.telephone});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

List<String> options = ['Renvoyer le SMS', 'Appel vocal'];

class _OtpScreenState extends State<OtpScreen> {
  String currentOption = options[0];

  TextEditingController otpController1 = TextEditingController();
  TextEditingController otpController2 = TextEditingController();
  TextEditingController otpController3 = TextEditingController();
  TextEditingController otpController4 = TextEditingController();
  TextEditingController otpController5 = TextEditingController();
  TextEditingController otpController6 = TextEditingController();

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Color.fromARGB(255, 0, 20, 18),
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
      ),
      builder: (context) => Container(
        height: 400,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Uihelper.customText(
                text: 'Choisir le mode de',
                height: 25,
              ),
              Uihelper.customText(
                text: 'verification',
                height: 25,
              ),
             SizedBox(height: 40),
             ListTile(
              leading: Icon(Icons.message_outlined, color: Colors.white),
              //activeColor: Colors.green,
              title: Text(options[0], style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal
                )
              ),
              subtitle: Text("Recevoir le code de l'adresse +243 \n995 486 911",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.white
              )
            ),
              trailing: Radio<String>(
              activeColor: Color(0XFF25D366),
              value: options[0], 
              groupValue: currentOption, 
              onChanged: (value){
                setState(() {
                  currentOption = value.toString();
                  
                }
              );            
              },
              ),
              
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.call_outlined, color: Colors.white),
              //activeColor: Colors.green,
              title: Text(options[1], style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal
                )
              ),
              subtitle: Text("Recevoir le code de l'adresse +243 \n995 486 911",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.white
              )
            ),
              trailing: Radio<String>(
              activeColor: Color(0XFF25D366),
              value: options[1], 
              groupValue: currentOption, 
              onChanged: (value){
                setState(() {
                  currentOption = value.toString();
                }
            );            
          },
        ),
        ),
        SizedBox(height: 30),
        Uihelper.customButton(
          callback: (){
            Navigator.pushNamed(context, '/profile');
            
          }, 
          buttonName: 'Continuer',
          )
        ],
        
          ),
          
        ),
        
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Uihelper.customText(
              text: 'Verification de votre numero',
              height: 27,
            ),
            SizedBox(height: 20),
            Uihelper.customText(
              text: 'Vous avez recemment tente de vous inscrire',
              height: 15,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(
                  text: 'avec le numero : ',
                  height: 15,
                  color: Colors.grey,
                ),
                Uihelper.customText(
                  text: '+243 ${widget.telephone}',
                  height: 15,
                  color: Colors.white,
                  fontweight: FontWeight.bold,
                ),
                Uihelper.customText(
                  text: '. Veuillez',
                  height: 15,
                  color: Colors.grey,
                ),
              ],
            ),
            Uihelper.customText(
              text: 'patienter avant de demander un SMS ou un',
              height: 15,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(
                  text: 'appel avec votre code. ',
                  height: 15,
                  color: Colors.grey,
                ),
                Uihelper.customText(
                  text: 'Numero incorrect',
                  height: 15,
                  color: Color(0XFF34B7F1),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Uihelper.customotpTextFiled(otpController1),
                    SizedBox(width: 20),
                    Uihelper.customotpTextFiled(otpController2),
                    SizedBox(width: 20),
                    Uihelper.customotpTextFiled(otpController3),
                    SizedBox(width: 20),
                    Uihelper.customotpTextFiled(otpController4),
                    SizedBox(width: 20),
                    Uihelper.customotpTextFiled(otpController5),
                    SizedBox(width: 20),
                    Uihelper.customotpTextFiled(otpController6),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 1,
              width: 200,
              color: const Color.fromARGB(255, 3, 26, 10),
            ),
            SizedBox(height: 45),
            TextButton(
              onPressed: () {
                _displayBottomSheet(context);
              },
              child: Uihelper.customText(
                text: "Vous n'avez pas recu de code ?",
                height: 15,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}