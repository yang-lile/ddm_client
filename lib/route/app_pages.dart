import 'package:ddm_client/pages/main_page/main_page.dart';
import 'package:ddm_client/pages/route_page/route_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page:()=> MainPage(),),
    GetPage(name: Routes.ROUTEPAGE, page:()=> RoutePage()),
  ];
}