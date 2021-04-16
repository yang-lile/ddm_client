import 'package:get/get.dart';

enum FuntionPages {
  Home,
  Store,
}

class PageStateController extends GetxController {
  FuntionPages _pageState = FuntionPages.Home;

  set pageState(FuntionPages value) {
    this._pageState = value;
    update();
  }

  FuntionPages get pageState => this._pageState;
}
