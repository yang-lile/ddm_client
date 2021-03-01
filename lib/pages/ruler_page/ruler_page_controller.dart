import 'dart:ffi';

import 'package:get/get.dart';

enum EditState {
  Edit,
  Show,
}

class RulerPageController extends GetxController {
  var _editState = EditState.Edit;

  set editState(value) {
    this._editState = value;
    update();
  }

  EditState get editState => this._editState;

  void cut() {
    this._editState == EditState.Edit
        ? this._editState = EditState.Show
        : this._editState = EditState.Edit;
    update();
  }
}
