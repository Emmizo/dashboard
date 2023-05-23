import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CounterController extends GetxController {
  var counter = 0.obs;
  void increment() {
    counter++;
  }
}
