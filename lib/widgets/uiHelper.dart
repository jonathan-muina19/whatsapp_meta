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
      height: 45,
      width: 350,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40)
          )
        ),
        onPressed: (){
          callback();
        }, 
        child: Text(buttonName,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 17,
          color: Colors.white
      ),
    )
      ),
    );

  }

}