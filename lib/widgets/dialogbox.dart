import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ErrorDialogBox {
  String? message;

  dialog(message) {
    return Get.defaultDialog(
        title: 'Error Message',
        middleText: message,
        onCancel: () {
          Text('Ok');
        });
  }
}
