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

  get editState => this._editState;
}
