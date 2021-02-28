import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimePickerController extends GetxController {
  TimeOfDay _timeOfDay = TimeOfDay.now();

  set timeOfDay(value) {
    this._timeOfDay = value;
    update();
  }

  get timeOfDay => this._timeOfDay;
}
