import 'package:ddm_client/pages/route_page/selectable_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getPermission(),
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.done) {
          return SelectableAppBar();
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Future getPermission() async {
    PermissionStatus status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
  }
}
