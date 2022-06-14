import 'package:event_management_app/services/user_event_services.dart';
import 'package:event_management_app/services/user_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final name = "".obs;
  final notelp = "".obs;
  final email = "".obs;
  final akses = "".obs;
  final image_url = "".obs;
  final idUser = "".obs;
  final userEvents = [].obs;
  final userFavoriteEvents = [].obs;
  final isFavorite = false.obs;

  void pleaseFill() {
    UserServices.getUserData().then((data){
      name.value = data['name'];
      notelp.value = data['notelp']; 
      email.value = data['email'];
      akses.value = data['akses'];
      image_url.value = data['image_url'];
    });
  }

  void getId(){
    UserServices.getUserIdDoc().then((id) {
      idUser.value = id;
    });
  }

  void getUserEvents() {
    UserEventServices.getUserEvents().then((data){
      userEvents.value = data;
    });
    UserEventServices.getUserFavoriteEvents().then((data){
      userFavoriteEvents.value = data;
    });
  }
}

class UserUpdateController extends GetxController {

  final UserController _userController = Get.find();

  final newNameController = TextEditingController();
  final newTelpController = TextEditingController();
  final newEmailController = TextEditingController();
  final passwordController = TextEditingController();

  onPressed() {
    UserServices.updateUser(
      newNameController.value.text, 
      newTelpController.value.text, 
      newEmailController.value.text,
      passwordController.value.text,
    );
  }

  @override
  void onReady() {
    newNameController.text = _userController.name.value;
    newTelpController.text = _userController.notelp.value;
    newEmailController.text = _userController.email.value;
    super.onReady();
  }

  // @override
  // void onClose() {
  //   newNameController.dispose();
  //   newEmailController.dispose();
  //   newTelpController.dispose();
  //   super.onClose();
  // }

}