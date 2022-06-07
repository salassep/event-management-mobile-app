import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

SignUpValidator(name, notelp, email, password) {
  if(name.isEmpty || notelp.isEmpty || email.isEmpty || password.isEmpty) {
    Get.snackbar(
      'Gagal', 
      'Form harus terisi!',
      titleText: Text("Gagal",
        style: TextStyle(
          fontFamily: "Quicksand",
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),
      ),
      messageText: Text("Form harus terisi!",
        style: TextStyle(
          fontFamily: "Quicksand",
          color: Colors.white
        ),
      ),
      icon: Icon(Icons.warning, color:  Colors.white,),
      backgroundColor: Colors.red,
      duration: Duration(seconds: 3),
      snackPosition: SnackPosition.TOP,
      margin: EdgeInsets.all(15),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      forwardAnimationCurve: Curves.easeOutBack
    );
    return false;
  } else {
    return true;
  }
}

LogInValidator(email, password) {
  if(email.isEmpty || password.isEmpty) {
    Get.snackbar(
      'Gagal', 
      'Form harus terisi!',
      titleText: Text("Gagal",
        style: TextStyle(
          fontFamily: "Quicksand",
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),
      ),
      messageText: Text("Form harus terisi!",
        style: TextStyle(
          fontFamily: "Quicksand",
          color: Colors.white
        ),
      ),
      icon: Icon(Icons.warning, color:  Colors.white,),
      backgroundColor: Colors.red,
      duration: Duration(seconds: 3),
      snackPosition: SnackPosition.TOP,
      margin: EdgeInsets.all(15),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      forwardAnimationCurve: Curves.easeOutBack
    );
    return false;
  } else {
    return true;
  }
}


