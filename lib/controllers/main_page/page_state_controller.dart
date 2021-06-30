import 'package:get/get.dart';

/// 用于主页的左右的切换状态管理
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
