import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';
import 'package:simple_live_app/app/app_style.dart';
import 'package:simple_live_app/app/utils.dart';
import 'package:simple_live_app/modules/sync/remote_sync/webdav/remote_sync_webdav_controller.dart';
import 'package:simple_live_app/routes/route_path.dart';
import 'package:simple_live_app/widgets/settings/settings_card.dart';
import 'package:simple_live_app/i18n/strings.dart';

class RemoteSyncWebDAVPage extends GetView<RemoteSyncWebDAVController> {
  const RemoteSyncWebDAVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.webdavSync),
      ),
      body: ListView(
        padding: AppStyle.edgeInsetsA12,
        children: [
          SettingsCard(
            child: Obx(
              () => Column(
                children: controller.notLogin.value
                    ? [
                        ListTile(
                          title: Text(S.clickToLogin),
                          leading: const Icon(Icons.login),
                          subtitle: Text(S.loginToSyncData),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () {
                            Get.toNamed(RoutePath.kRemoteSyncWebDavConfig);
                          },
                        ),
                      ]
                    : [
                        ListTile(
                          title: Text(S.loggedIn),
                          leading: const Icon(Icons.cloud_circle_outlined),
                          subtitle: Text(controller.user.value),
                          trailing: const Icon(Icons.logout),
                          onTap: () {
                            controller.onLogout();
                          },
                        ),
                        AppStyle.divider,
                        ListTile(
                          title: Text(S.uploadToCloud),
                          subtitle: Text("${S.lastUpload}: ${controller.lastUploadTime}"),
                          leading: const Icon(Icons.cloud_upload_outlined),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () {
                            controller.doWebDAVUpload();
                          },
                        ),
                        AppStyle.divider,
                        ListTile(
                          title: Text(S.restoreToDevice),
                          subtitle: Text("${S.lastRestore}: ${controller.lastRecoverTime}"),
                          leading: const Icon(Icons.cloud_download_outlined),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.settings),
                                onPressed: showSetting,
                              ),
                              const Icon(Icons.chevron_right),
                            ],
                          ),
                          onTap: () {
                            controller.doWebDAVRecovery();
                          },
                          onLongPress: showSetting,
                        ),
                      ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showSetting() {
    Utils.showBottomSheet(
      title: S.syncOptions,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppStyle.divider,
          Obx(
            () => CheckboxListTile(
              secondary: const Icon(Remix.heart_line),
              title: Text(S.syncFollowList),
              value: controller.isSyncFollows.value,
              controlAffinity: ListTileControlAffinity.trailing,
              onChanged: (value) => controller.changeIsSyncFollows(),
            ),
          ),
          AppStyle.divider,
          Obx(
            () => CheckboxListTile(
              secondary: const Icon(Icons.history),
              title: Text(S.syncPlayHistory),
              value: controller.isSyncHistories.value,
              controlAffinity: ListTileControlAffinity.trailing,
              onChanged: (value) => controller.changeIsSyncHistories(),
            ),
          ),
          AppStyle.divider,
          Obx(
            () => CheckboxListTile(
              secondary: const Icon(Remix.shield_keyhole_line),
              title: Text(S.syncBlockWords),
              value: controller.isSyncBlockWord.value,
              controlAffinity: ListTileControlAffinity.trailing,
              onChanged: (value) => controller.changeIsSyncBlockWord(),
            ),
          ),
          AppStyle.divider,
          Obx(
            () => CheckboxListTile(
              secondary: const Icon(Remix.account_circle_line),
              title: Text(S.syncBilibiliAccount),
              value: controller.isSyncBilibiliAccount.value,
              controlAffinity: ListTileControlAffinity.trailing,
              onChanged: (value) => controller.changeIsSyncBilibiliAccount(),
            ),
          ),
          AppStyle.divider,
        ],
      ),
    );
  }
}
