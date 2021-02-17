import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SlideController extends GetxController {
  Offset _position = Offset(0, 0);

  set position(Offset value) => this._position = value;

  Offset get position => this._position;
}
