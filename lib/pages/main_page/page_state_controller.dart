import 'package:get/get.dart';

enum FuntionPages {
  Home,
  Store,
}

class PageStateController extends GetxController {
  final _pageState = FuntionPages.Home.obs;
  set pageState(value) {
    this._pageState.value = value;
    update();
  }

  get pageState => this._pageState.value;
}
