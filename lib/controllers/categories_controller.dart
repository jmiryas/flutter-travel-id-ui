import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CatergoryController extends GetxController {
  var currentIndex = 0.obs;

  getCategoryColor(index) {
    return currentIndex == index ? Colors.white : Colors.grey.shade100;
  }

  getCategoryTextColor(index) {
    return currentIndex == index ? Colors.red : Colors.grey.shade900;
  }
}
