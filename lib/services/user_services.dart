import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_management_app/services/authentication_service.dart';

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
        'image_url': "assets/images/user.png",
      }
    );
  }

  static Future<String> getAccess() async{

    final email = await AuthServices.getCurrentEmail();

    var hakAkses = await users.where("email", isEqualTo: email).get().then((value) {
      return value.docs[0].get("akses");
    });

    return hakAkses;
  }

  static Future<String> getUserIdDoc() {

    final email = AuthServices.getCurrentEmail();

    var userIdDoc = users.where("email", isEqualTo: email).get().then((value) {
      return value.docs[0].id;
    });

    return userIdDoc;

  }

  static Future getUserData() async {
    
    final userId = await getUserIdDoc();

    var userData = users.doc(userId).get().then((value) {
      return {
        "name" : value.get("name"),
        "email": value.get("email"),
        "notelp": value.get("notelp"),
        "akses": value.get("akses"),
        "image_url": value.get("image_url")
      };
    });

    return userData;
  }

  static Future updateUser(String newName, String newNotelp, String newEmail, String pass ) async {

    final email = AuthServices.getCurrentEmail();
    final userId = await getUserIdDoc();
    var check = true;

    if (email != newEmail) {
      check = await AuthServices.updateUserEmail(newEmail, pass).then((value) => value);
    }

    if(check) {
      users.doc(userId).update({
        "name": newName,
        "notelp": newNotelp,
        "email": newEmail,
      });
    }
  }
}