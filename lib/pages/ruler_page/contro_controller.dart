import 'package:get/get.dart';

// dynamic controller manager
class ControController extends GetxController {
  var _controllers = [];

  void addController(dynamic controller) {
    this._controllers.add(controller);
  }

  void delController(int index) {
    this._controllers.removeAt(index);
  }
}
