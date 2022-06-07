import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_management_app/pages/main_page.dart';
import 'package:event_management_app/pages/organizer/organizer_main_page.dart';
import 'package:event_management_app/services/authentication_service.dart';
import 'package:event_management_app/widgets/drawer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference users = firestore.collection("users");

class UserServices {
  static Future addUser(String name, String notelp, String email, String akses) async {
    await users.add(
      {
        'name': name,
        'notelp': notelp,
        'email': email,
        'akses': akses,
        'imageUrl': "assets/images/user.png",
      }
    );
  }

  static Future getAccess() async{

    final email = AuthServices.getCurrentEmail();

    var hakAkses = await users.where("email", isEqualTo: email).get().then((value) {
      return value.docs[0].get("akses");
    });

    return hakAkses;
  }

  static Future getUserIdDoc() async {

    final email = AuthServices.getCurrentEmail();

    var userIdDoc = await users.where("email", isEqualTo: email).get().then((value) {
      return value.docs[0].id;
    });

    return userIdDoc;

  }

  static Future getUserData() async{

    final userIdDoc = await getUserIdDoc();

    var userData = await users.doc(userIdDoc).snapshots();

    return userData;
  }
}