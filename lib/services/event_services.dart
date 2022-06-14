import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_management_app/controller/event_controller.dart';
import 'package:event_management_app/controller/user_controller.dart';
import 'package:event_management_app/services/user_services.dart';
import 'package:get/get.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference events = firestore.collection("events");

class EventServices {
  static Future addEvents() async {
    final CreateEventSchedule createEventSchedule = Get.find();
    final CreateEventTextController createEventTextController = Get.find();
    final CheckBoxController checkBoxController = Get.find();
    final CreateEventCategoryController createEventCategoryController = Get.find();
    final UserController userController = Get.find();

    final userId = await UserServices.getUserIdDoc().then((value) => value);

    await events.add({
      "idOrganizer": userId,
      "organizer": userController.name.value,
      "title": createEventTextController.eventName.value,
      "link": createEventTextController.linkEvent.value,
      "location": createEventTextController.lokasi.value,
      "price": createEventTextController.harga.value,
      "deskripsi": createEventTextController.deskripsi.value,
      "isPublish": checkBoxController.isPublish.value,
      "category": createEventCategoryController.deliveryName.value,
      "image_url": "",
      "schedule": {
        "dayName": createEventSchedule.dayName.value,
        "day": createEventSchedule.day.value,
        "month": createEventSchedule.month.value,
        "year": createEventSchedule.year.value,
        "clock": createEventSchedule.clock.value,
        "minute": createEventSchedule.minute.value
      }
    }).then((value) {
      Get.delete<CheckBoxController>();
      Get.delete<CreateEventSchedule>();
      Get.delete<CreateEventTextController>();
    });

  }
  static Future updateEvents() async {
    final CreateEventSchedule createEventSchedule = Get.find();
    final CreateEventTextController createEventTextController = Get.find();
    final CheckBoxController checkBoxController = Get.find();
    final CreateEventCategoryController createEventCategoryController = Get.find();

    await events.doc(createEventTextController.idEvent.value).update({
      "title": createEventTextController.eventName.value,
      "link": createEventTextController.linkEvent.value,
      "location": createEventTextController.lokasi.value,
      "price": createEventTextController.harga.value,
      "deskripsi": createEventTextController.deskripsi.value,
      "isPublish": checkBoxController.isPublish.value,
      "category": createEventCategoryController.deliveryName.value,
      "schedule": {
        "dayName": createEventSchedule.dayName.value,
        "day": createEventSchedule.day.value,
        "month": createEventSchedule.month.value,
        "year": createEventSchedule.year.value,
        "clock": createEventSchedule.clock.value,
        "minute": createEventSchedule.minute.value
      }
    }).then((value) {
      Get.delete<CheckBoxController>();
      Get.delete<CreateEventSchedule>();
      Get.delete<CreateEventTextController>();
    });

  }

  static Future updatePicture(String url_image) async {

    final CreateEventTextController createEventTextController = Get.find();

    events.doc(createEventTextController.idEvent.value).update({
      "image_url": url_image
    });
  }
}