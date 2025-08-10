import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_live_app/app/app_style.dart';
import 'package:simple_live_app/app/controller/app_settings_controller.dart';
import 'package:simple_live_app/widgets/settings/settings_card.dart';
import 'package:simple_live_app/widgets/settings/settings_menu.dart';
import 'package:simple_live_app/widgets/settings/settings_number.dart';
import 'package:simple_live_app/widgets/settings/settings_switch.dart';
import 'package:simple_live_app/i18n/strings.dart';

class PlaySettingsPage extends GetView<AppSettingsController> {
  const PlaySettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.liveRoomSettings),
      ),
      body: ListView(
        padding: AppStyle.edgeInsetsA12,
        children: [
          Padding(
            padding: AppStyle.edgeInsetsA12.copyWith(top: 0),
            child: Text(
              S.player,
              style: Get.textTheme.titleSmall,
            ),
          ),
          SettingsCard(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Obx(
                  () => SettingsSwitch(
                    title: S.hardwareDecode,
                    value: controller.hardwareDecode.value,
                    subtitle: S.hardwareDecodeSubtitle,
                    onChanged: (e) {
                      controller.setHardwareDecode(e);
                    },
                  ),
                ),
                if (Platform.isAndroid) AppStyle.divider,
                Obx(
                  () => Visibility(
                    visible: Platform.isAndroid,
                    child: SettingsSwitch(
                      title: S.compatibilityMode,
                      subtitle: S.compatibilityModeSubtitle,
                      value: controller.playerCompatMode.value,
                      onChanged: (e) {
                        controller.setPlayerCompatMode(e);
                      },
                    ),
                  ),
                ),
                // AppStyle.divider,
                // Obx(
                //   () => SettingsNumber(
                //     title: "缓冲区大小",
                //     subtitle: "若播放卡顿可尝试调高此选项",
                //     value: controller.playerBufferSize.value,
                //     min: 32,
                //     max: 1024,
                //     step: 4,
                //     unit: "MB",
                //     onChanged: (e) {
                //       controller.setPlayerBufferSize(e);
                //     },
                //   ),
                // ),
                AppStyle.divider,
                Obx(
                  () => SettingsSwitch(
                    title: S.autoPauseInBackground,
                    value: controller.playerAutoPause.value,
                    onChanged: (e) {
                      controller.setPlayerAutoPause(e);
                    },
                  ),
                ),
                AppStyle.divider,
                Obx(
                  () => SettingsMenu<int>(
                    title: S.screenSize,
                    value: controller.scaleMode.value,
                    valueMap: {
                      0: S.fit,
                      1: S.stretch,
                      2: S.fill,
                      3: "16:9",
                      4: "4:3",
                    },
                    onChanged: (e) {
                      controller.setScaleMode(e);
                    },
                  ),
                ),
                AppStyle.divider,
                Obx(
                  () => SettingsSwitch(
                    title: S.useHttpsLinks,
                    subtitle: S.useHttpsLinksSubtitle,
                    value: controller.playerForceHttps.value,
                    onChanged: (e) {
                      controller.setPlayerForceHttps(e);
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: AppStyle.edgeInsetsA12.copyWith(top: 24),
            child: Text(
              S.liveRoom,
              style: Get.textTheme.titleSmall,
            ),
          ),
          SettingsCard(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Obx(
                  () => SettingsSwitch(
                    title: S.autoFullScreenOnEnter,
                    value: controller.autoFullScreen.value,
                    onChanged: (e) {
                      controller.setAutoFullScreen(e);
                    },
                  ),
                ),
                AppStyle.divider,
                Obx(
                  () => Visibility(
                    visible: Platform.isAndroid,
                    child: SettingsSwitch(
                      title: S.hideDanmuInPip,
                      value: controller.pipHideDanmu.value,
                      onChanged: (e) {
                        controller.setPIPHideDanmu(e);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: AppStyle.edgeInsetsA12.copyWith(top: 24),
            child: Text(
              S.quality,
              style: Get.textTheme.titleSmall,
            ),
          ),
          SettingsCard(
            child: Column(
              children: [
                Obx(
                  () => SettingsMenu<int>(
                    title: S.defaultQuality,
                    value: controller.qualityLevel.value,
                    valueMap: {
                      0: S.lowest,
                      1: S.medium,
                      2: S.highest,
                    },
                    onChanged: (e) {
                      controller.setQualityLevel(e);
                    },
                  ),
                ),
                AppStyle.divider,
                Obx(
                  () => SettingsMenu<int>(
                    title: S.cellularQuality,
                    value: controller.qualityLevelCellular.value,
                    valueMap: {
                      0: S.lowest,
                      1: S.medium,
                      2: S.highest,
                    },
                    onChanged: (e) {
                      controller.setQualityLevelCellular(e);
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: AppStyle.edgeInsetsA12.copyWith(top: 24),
            child: Text(
              S.chatArea,
              style: Get.textTheme.titleSmall,
            ),
          ),
          SettingsCard(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Obx(
                  () => SettingsNumber(
                    title: S.textSize,
                    value: controller.chatTextSize.value.toInt(),
                    min: 8,
                    max: 36,
                    onChanged: (e) {
                      controller.setChatTextSize(e.toDouble());
                    },
                  ),
                ),
                AppStyle.divider,
                Obx(
                  () => SettingsNumber(
                    title: S.verticalSpacing,
                    value: controller.chatTextGap.value.toInt(),
                    min: 0,
                    max: 12,
                    onChanged: (e) {
                      controller.setChatTextGap(e.toDouble());
                    },
                  ),
                ),
                AppStyle.divider,
                Obx(
                  () => SettingsSwitch(
                    title: S.bubbleStyle,
                    value: controller.chatBubbleStyle.value,
                    onChanged: (e) {
                      controller.setChatBubbleStyle(e);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
