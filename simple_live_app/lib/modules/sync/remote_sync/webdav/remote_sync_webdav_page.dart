import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';
import 'package:simple_live_app/app/app_style.dart';
import 'package:simple_live_app/app/utils.dart';
import 'package:simple_live_app/modules/sync/remote_sync/webdav/remote_sync_webdav_controller.dart';
import 'package:simple_live_app/routes/route_path.dart';
import 'package:simple_live_app/widgets/settings/settings_card.dart';

class RemoteSyncWebDAVPage extends GetView<RemoteSyncWebDAVController> {
  const RemoteSyncWebDAVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Đồng bộ WebDAV"),
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
                          title: const Text("Nhấp để đăng nhập"),
                          leading: const Icon(Icons.login),
                          subtitle: const Text("Sau khi đăng nhập có thể đồng bộ tất cả dữ liệu của bạn"),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () {
                            Get.toNamed(RoutePath.kRemoteSyncWebDavConfig);
                          },
                        ),
                      ]
                    : [
                        ListTile(
                          title: const Text("Đã đăng nhập"),
                          leading: const Icon(Icons.cloud_circle_outlined),
                          subtitle: Text(controller.user.value),
                          trailing: const Icon(Icons.logout),
                          onTap: () {
                            controller.onLogout();
                          },
                        ),
                        AppStyle.divider,
                        ListTile(
                          title: const Text("Tải lên đám mây"),
                          subtitle: Text("Lần tải lên cuối: ${controller.lastUploadTime}"),
                          leading: const Icon(Icons.cloud_upload_outlined),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () {
                            controller.doWebDAVUpload();
                          },
                        ),
                        AppStyle.divider,
                        ListTile(
                          title: const Text("Khôi phục về máy"),
                          subtitle: Text("Lần khôi phục cuối: ${controller.lastRecoverTime}"),
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
      title: 'Tùy chọn đồng bộ',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppStyle.divider,
          Obx(
            () => CheckboxListTile(
              secondary: const Icon(Remix.heart_line),
              title: const Text("Đồng bộ danh sách theo dõi"),
              value: controller.isSyncFollows.value,
              controlAffinity: ListTileControlAffinity.trailing,
              onChanged: (value) => controller.changeIsSyncFollows(),
            ),
          ),
          AppStyle.divider,
          Obx(
            () => CheckboxListTile(
              secondary: const Icon(Icons.history),
              title: const Text("Đồng bộ lịch sử phát"),
              value: controller.isSyncHistories.value,
              controlAffinity: ListTileControlAffinity.trailing,
              onChanged: (value) => controller.changeIsSyncHistories(),
            ),
          ),
          AppStyle.divider,
          Obx(
            () => CheckboxListTile(
              secondary: const Icon(Remix.shield_keyhole_line),
              title: const Text("Đồng bộ từ chặn"),
              value: controller.isSyncBlockWord.value,
              controlAffinity: ListTileControlAffinity.trailing,
              onChanged: (value) => controller.changeIsSyncBlockWord(),
            ),
          ),
          AppStyle.divider,
          Obx(
            () => CheckboxListTile(
              secondary: const Icon(Remix.account_circle_line),
              title: const Text("Đồng bộ tài khoản Bilibili"),
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
