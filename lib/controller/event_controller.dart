import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

enum Delivery { Desain, Technology, Cloud, Programming, Others }

class CreateEventCategoryController extends GetxController {
  var delivery = Delivery.Desain.obs;
  var deliveryName = "".obs;

  void getDeliveryName() {
    if (delivery == Delivery.Desain){
      deliveryName.value = "Desain";
    } else if (delivery == Delivery.Technology){
      deliveryName.value = "Technology";
    } else if (delivery == Delivery.Cloud){
      deliveryName.value = "Cloud";
    } else if (delivery == Delivery.Programming){
      deliveryName.value = "Programming";
    } else {
      deliveryName.value = "Others";
    }
  }

  onChanged (value) {
    delivery(value);
  }
}

class CheckBoxController extends GetxController {
  var isPublish = false.obs;
  setValue(newValue) => isPublish(newValue!);
}

class CreateEventSchedule extends GetxController {
  var dayName = "".obs;
  var day = "".obs;
  var month = "".obs;
  var year = "".obs;
  var clock = "".obs;
  var minute = "".obs;

  void onPressed(dn, dt, mt, yr, cl, mn) {
    dayName.value = dn.toString();
    day.value = dt.toString();
    month.value = mt.toString();
    year.value = yr.toString();
    clock.value = cl.toString();
    minute.value = mn.toString();
  }
}

class CreateEventTextController extends GetxController {
  var idEvent = "".obs;
  var eventName = "".obs;
  var lokasi = "".obs;
  var harga = "".obs;
  var linkEvent = "".obs;
  var deskripsi = "".obs;

  final eventNameController = TextEditingController();
  final lokasiController = TextEditingController();
  final hargaController = TextEditingController();
  final linkController = TextEditingController();
  final deskripsiController = TextEditingController();

  void onPressed() {
    eventName.value = eventNameController.text;
    lokasi.value = lokasiController.text;
    linkEvent.value = linkController.text;
    harga.value = hargaController.text;
    deskripsi.value = deskripsiController.text;
  }
}