import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';
import 'package:simple_live_app/app/app_style.dart';
import 'package:simple_live_app/app/utils.dart';
import 'package:simple_live_app/routes/route_path.dart';
import 'package:simple_live_app/widgets/settings/settings_card.dart';
import 'package:simple_live_app/i18n/strings.dart';

class SyncPage extends StatelessWidget {
  const SyncPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.syncData),
        actions: [
          Visibility(
            visible: GetPlatform.isAndroid || GetPlatform.isIOS,
            child: TextButton.icon(
              onPressed: () async {
                var result = await Get.toNamed(RoutePath.kSyncScan);
                if (result == null || result.isEmpty) {
                  return;
                }
                if (result.length == 5) {
                  Get.toNamed(RoutePath.kRemoteSyncRoom, arguments: result);
                } else {
                  Get.toNamed(RoutePath.kLocalSync, arguments: result);
                }
              },
              icon: const Icon(Remix.qr_scan_line),
              label: Text(S.scanQR),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: AppStyle.edgeInsetsA12,
        children: [
          Padding(
            padding: AppStyle.edgeInsetsA12.copyWith(top: 0),
            child: Text(
              S.remoteSync,
              style: Get.textTheme.titleSmall,
            ),
          ),
          SettingsCard(
            child: Column(
              children: [
                ListTile(
                  title: Text(S.createRoom),
                  leading: const Icon(Remix.home_wifi_line),
                  subtitle: Text(S.createRoomSubtitle),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Get.toNamed(RoutePath.kRemoteSyncRoom);
                  },
                ),
                AppStyle.divider,
                ListTile(
                  title: Text(S.joinRoom),
                  leading: const Icon(Remix.add_circle_line),
                  subtitle: Text(S.joinRoomSubtitle),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () async {
                    var input = await Utils.showEditTextDialog(
                      "",
                      title: S.joinRoom,
                      hintText: S.enterRoomCode,
                      validate: (text) {
                        if (text.isEmpty) {
                          SmartDialog.showToast(S.roomCodeEmpty);
                          return false;
                        }
                        if (text.length != 5) {
                          SmartDialog.showToast(S.roomCodeLength);
                          return false;
                        }
                        return true;
                      },
                    );
                    if (input != null && input.isNotEmpty) {
                      Get.toNamed(RoutePath.kRemoteSyncRoom,
                          arguments: input.toUpperCase());
                    }
                  },
                ),
                AppStyle.divider,
                ListTile(
                  title: const Text("WebDAV"),
                  leading: const Icon(Icons.cloud_upload_outlined),
                  subtitle: Text(S.webdavSync),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Get.toNamed(RoutePath.kRemoteSyncWebDav);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: AppStyle.edgeInsetsA12.copyWith(top: 24),
            child: Text(
              S.localSync,
              style: Get.textTheme.titleSmall,
            ),
          ),
          SettingsCard(
            child: Column(
              children: [
                ListTile(
                  title: Text(S.localSync),
                  subtitle: Text(S.localSyncSubtitle),
                  leading: const Icon(Remix.device_line),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Get.toNamed(RoutePath.kLocalSync);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
