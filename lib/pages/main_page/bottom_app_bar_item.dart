import 'package:ddm_client/controllers/main_page/page_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomAppBarItem extends StatelessWidget {
  final IconData icon;
  final FuntionPages state;
  final PageController pageController;
  const BottomAppBarItem({
    Key? key,
    required this.icon,
    required this.state,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PageStateController>(
      init: PageStateController(),
      builder: (controller) {
        return IconButton(
          icon: Icon(icon),
          color: state == controller.pageState
              ? Get.theme.primaryColor
              : Colors.grey[400],
          onPressed: () {
            Get.find<PageStateController>().pageState = state;
            pageController.animateToPage(
              state.index,
              curve: Curves.easeOutQuart,
              duration: Duration(milliseconds: 500),
            );
          },
        );
      },
    );
  }
}
