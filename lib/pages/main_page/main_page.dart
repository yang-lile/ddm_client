import 'package:ddm_client/pages/main_page/bottom_app_bar_item.dart';
import 'package:ddm_client/pages/main_page/rulers_list.dart';
import 'package:ddm_client/pages/main_page/store_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'page_state_controller.dart';

class MainPage extends StatelessWidget {
  final pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: pageState2Widget(),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) => Get.find<PageStateController>().pageState =
            index == 0 ? FuntionPages.Home : FuntionPages.Store,
        children: [
          RulersList(),
          StoreList(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            BottomAppBarItem(
              icon: Icons.home_rounded,
              state: FuntionPages.Home,
              pageController: pageController,
            ),
            BottomAppBarItem(
              icon: Icons.store_rounded,
              state: FuntionPages.Store,
              pageController: pageController,
            ),
          ],
        ),
      ),
    );
  }

  Widget pageState2Widget() {
    return GetBuilder<PageStateController>(
      init: PageStateController(),
      builder: (controller) {
        return Text(
          controller.pageState == FuntionPages.Home ? 'home'.tr : 'store'.tr,
        );
      },
    );
  }
}
