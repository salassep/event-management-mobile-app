import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class CheckBoxController extends GetxController {
  var isPublish = false.obs;
  setValue(newValue) => isPublish(newValue!);
}
