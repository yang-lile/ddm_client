import 'package:get/get.dart';

enum FuntionPages {
  Home,
  Store,
}

class PageStateController extends GetxController {
  var _pageState = FuntionPages.Home;

  set pageState(value) {
    this._pageState = value;
    update();
  }

  get pageState => this._pageState;
}
