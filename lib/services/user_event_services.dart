import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_management_app/controller/user_controller.dart';
import 'package:event_management_app/services/user_services.dart';
import 'package:get/get.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference userEvents = firestore.collection("UserEvents");
CollectionReference favorites = firestore.collection("favorites");

class UserEventServices {
  static Future addUserEvents(String idEvent) async {

    final userId = await UserServices.getUserIdDoc().then((value) => value);

    userEvents.add({
      "id_user": userId,
      "id_event": idEvent
    });

  }

  static Future addFavorite(String idEvent) async {

    final userId = await UserServices.getUserIdDoc().then((value) => value);

    favorites.add({
      "id_user": userId,
      "id_event": idEvent
    });
  }

  static Future getUserEvents() async {
    
    final userId = await UserServices.getUserIdDoc().then((value) => value);
    
    var dataEvents = [];

    await userEvents.where('id_user', isEqualTo: userId).get().then((value){
      value.docs.forEach((element) { 
        dataEvents.add(element.get('id_event'));
      });
    });

    return dataEvents;
  }

  static Future getUserFavoriteEvents() async {
    
    final userId = await UserServices.getUserIdDoc().then((value) => value);
    
    var dataFavoriteEvents = [];

    await favorites.where('id_user', isEqualTo: userId).get().then((value){
      value.docs.forEach((element) { 
        dataFavoriteEvents.add(element.get('id_event'));
      });
    });

    return dataFavoriteEvents;
  }

  static deleteUserEvents(String idEvent) async {

    final userId = await UserServices.getUserIdDoc().then((value) => value);

    userEvents.where('id_user', isEqualTo: userId).where('id_event', isEqualTo: idEvent).get()
    .then((value) => userEvents.doc(value.docs[0].id).delete());
    
  }

  static deleteFavoriteEvents(String idEvent) async {

    final userId = await UserServices.getUserIdDoc().then((value) => value);

    favorites.where('id_user', isEqualTo: userId).where('id_event', isEqualTo: idEvent).get()
    .then((value) => favorites.doc(value.docs[0].id).delete());
    
  }

}
