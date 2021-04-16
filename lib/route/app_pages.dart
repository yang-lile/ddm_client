import 'package:ddm_client/pages/guide_page/guide_page.dart';
import 'package:ddm_client/pages/main_page/main_page.dart';
import 'package:ddm_client/pages/pass_word_page/pass_word_page.dart';
import 'package:ddm_client/pages/route_page/route_page.dart';
import 'package:ddm_client/pages/ruler_page/ruler_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => MainPage()),
    GetPage(name: Routes.ROUTE, page: () => RoutePage()),
    GetPage(name: Routes.GUIDE, page: () => GuidePage()),
    GetPage(name: Routes.RULER, page: () => RulerPage()),
    GetPage(name: Routes.PASSWORD, page: () => PassWordPage()),
  ];
}
