import 'package:flutter/material.dart';

class Uihelper {

  static customText({required String text, required double height, Color? color,  FontWeight? fontweight}){
    return Text(
      text,
      style: TextStyle(
        fontSize: height,
        color: color?? Colors.white,
        fontWeight: fontweight

      ),
    );
  }

  static customButton({required VoidCallback callback, required String buttonName}){
    return SizedBox(
      height: 40,
      width: 360,
      child: ElevatedButton(
      
        style: ElevatedButton.styleFrom(
          backgroundColor:  Color(0XFF25D366),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40)
          )
        ),
        onPressed: (){
          callback();
        }, 
        child: Text(buttonName,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
          color: Colors.black
      ), 
        )
      ),
    );

  }

  static customotpTextFiled(TextEditingController controller){
    return SizedBox(
      width: 10,
      child:TextField(
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.start,
        cursorHeight: 30,
        cursorColor: Colors.green,
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color:  Colors.grey)
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color:  Colors.grey)
          ),
          
        )
      )
    );
  }

}