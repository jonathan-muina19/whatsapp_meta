import 'package:flutter/material.dart';
import 'package:whatsapp_meta/widgets/uiHelper.dart';

class AuthentificationPages extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  AuthentificationPages({super.key});
  

  @override
  State<AuthentificationPages> createState() => _AuthentificationPagesState();
}

class _AuthentificationPagesState extends State<AuthentificationPages> {

  TextEditingController phoneController = TextEditingController();

  String selectedCountry = 'RDC';

  List<String> countries = [
    'RDC',
    'CANADA',
    'USA',
    'LUXEMBOURG'
  ];

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
    ),
        Padding(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: DropdownButtonFormField(
             dropdownColor: Colors.grey, 
            items: countries.map((String country){
              return DropdownMenuItem(
                value: country,
                child: Center(
                  child: Text(country.toString(),
                  style: TextStyle(
                    color: Colors.white, 
                  ),
                ),
                ));
            }).toList(),
             
            onChanged: (newvalue){
              setState(() {
                selectedCountry=newvalue!;
              }); 
            },
            value:  selectedCountry,
            decoration: InputDecoration(
              //labelText: 'Choisissez un pays',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF00A884))
              ),
              focusedBorder:UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF00A884))
              ),
            ),
          ),
        ),
                SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: '+243',
                  hintStyle: TextStyle(
                    color: Colors.white
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884))
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884))
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884))
                  ),
                ),
              ),
            ),
           SizedBox(width: 10),
            SizedBox(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                controller:phoneController ,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884))
                    ),
                ),
              ),
            )
          ],
          ),
                
        ],
    ),
    floatingActionButton: Uihelper.customButton(
      callback: (){

      }, 
      buttonName: 'Suivant'
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}