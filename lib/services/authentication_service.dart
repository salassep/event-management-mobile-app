import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthServices{

  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future createUser(String email, String pass) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email, 
        password: pass,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      Get.defaultDialog(
        backgroundColor: Colors.white,
        middleText: "$e",
        middleTextStyle: TextStyle(
          fontFamily: "Quicksand",
        ),
        radius: 30,
      );
      return false;      
    } catch (e) {
      Get.defaultDialog(
        backgroundColor: Colors.white,
        middleText: "$e",
        radius: 30,
      );
      return false;
    } 
  }

  static Future signInWithEmail(String email, String pass) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email, 
        password: pass,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      Get.defaultDialog(
        backgroundColor: Colors.white,
        middleText: "$e",
        middleTextStyle: TextStyle(
          fontFamily: "Quicksand",
        ),
        radius: 30,
      );
      return false;      
    } catch (e) {
      Get.defaultDialog(
        backgroundColor: Colors.white,
        middleText: "$e",
        radius: 30,
      );
      return false;
    }   
  }

  static getCurrentEmail(){
    final user = _auth.currentUser;

    if (user != null) {
      final emailUser = user.email;
      return emailUser;
    } 

    return false;
  }

  static Future signOut() async{
    await _auth.signOut();
  }
}