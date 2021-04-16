import 'package:ddm_client/controllers/main_page/page_state_controller.dart';
import 'package:ddm_client/pages/main_page/bottom_app_bar_item.dart';
import 'package:ddm_client/pages/main_page/data_center.dart';
import 'package:ddm_client/pages/main_page/store_list.dart';
// import 'package:ddm_client/route/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  final pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: pageState2Widget(),
      ),
      body: PageView(
        physics: BouncingScrollPhysics(),
        controller: pageController,
        onPageChanged: (index) {
          Get.find<PageStateController>().pageState =
              FuntionPages.values[index];
        },
        children: [
          // RulersList(),
          DataCenter(),
          StoreList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create_rounded),
        onPressed: () {
          // Get.toNamed(Routes.ROUTE, arguments: "path");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
          controller.pageState == FuntionPages.Home
              ? 'data center'.tr
              : 'template store'.tr,
        );
      },
    );
  }
}
