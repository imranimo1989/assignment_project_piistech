import 'package:flutter/material.dart';

InputDecoration AppInputDecoration(label,icon){
  return InputDecoration(
    focusedBorder:  const OutlineInputBorder(
        borderSide:  BorderSide(color: Colors.green,width: 0)
    ),
    fillColor: Colors.white,
    filled: true,
    contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
    enabledBorder:  const OutlineInputBorder(
        borderSide:  BorderSide.none,
    ),
    border: const OutlineInputBorder(),
    labelText: label,
    prefixIcon: icon,

  );
}


ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
      elevation: 1,
      padding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
  );
}

Ink ButtonChild(ButtonText){
  return Ink(
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(6),
    ),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child: Text(ButtonText,style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15
      ),),
    ),
  );
}

TextStyle appTitleStyle = const TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w600,
  color: Colors.black87,
);