import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';
import 'package:simple_live_app/app/app_style.dart';
import 'package:simple_live_app/modules/sync/local_sync/local_sync_controller.dart';
import 'package:simple_live_app/services/sync_service.dart';
import 'package:simple_live_app/widgets/settings/settings_card.dart';
import 'package:simple_live_app/i18n/strings.dart';

class LocalSyncPage extends GetView<LocalSyncController> {
  const LocalSyncPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.localSync),
        actions: [
          TextButton.icon(
            onPressed: controller.showInfo,
            icon: const Icon(Icons.qr_code),
            label: Text(S.info),
          ),
        ],
      ),
      body: ListView(
        padding: AppStyle.edgeInsetsA12,
        children: [
          SettingsCard(
            child: Padding(
              padding: AppStyle.edgeInsetsA12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: controller.addressController,
                    onSubmitted: (e) {
                      controller.connect();
                    },
                    decoration: InputDecoration(
                      labelText: S.clientAddress,
                      hintText: S.enterAddressOrScan,
                      contentPadding: AppStyle.edgeInsetsH12,
                      border: const OutlineInputBorder(),
                      suffixIcon: Visibility(
                        visible: Platform.isAndroid || Platform.isIOS,
                        child: TextButton.icon(
                          onPressed: controller.toScanQr,
                          icon: const Icon(Remix.qr_scan_line),
                          label: Text(S.scan),
                        ),
                      ),
                    ),
                  ),
                  AppStyle.vGap12,
                  ElevatedButton(
                    onPressed: () {
                      controller.connect();
                    },
                    child: Text(S.connect),
                  ),
                ],
              ),
            ),
          ),
          AppStyle.vGap12,
          ListTile(
            title: Obx(
              () => Text(
"${S.discoveredDevices}(${SyncService.instance.scanClients.length})",
                style: Get.textTheme.titleSmall,
              ),
            ),
            visualDensity: VisualDensity.compact,
            contentPadding: AppStyle.edgeInsetsH12,
            trailing: IconButton(
              visualDensity: VisualDensity.compact,
              onPressed: () {
                SyncService.instance.refreshClients();
              },
              icon: const Icon(Icons.refresh),
            ),
          ),
          SettingsCard(
            child: Obx(
              () => ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) =>
                    AppStyle.divider,
                itemCount: SyncService.instance.scanClients.length,
                itemBuilder: (BuildContext context, int index) {
                  var client = SyncService.instance.scanClients[index];
                  return ListTile(
                    title: Text(client.name),
                    subtitle: Text(client.address),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      controller.connectClient(client);
                    },
                  );
                },
              ),
            ),
          ),
          AppStyle.vGap12,
          Text(
            S.manualAddressHint,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
