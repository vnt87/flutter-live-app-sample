import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';
import 'package:simple_live_app/app/app_style.dart';
import 'package:simple_live_app/app/log.dart';
import 'package:simple_live_app/app/utils.dart';
import 'package:simple_live_app/routes/route_path.dart';
import 'package:simple_live_app/services/signalr_service.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MinePage extends StatelessWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Get.isDarkMode
          ? SystemUiOverlayStyle.light.copyWith(
              systemNavigationBarColor: Colors.transparent,
            )
          : SystemUiOverlayStyle.dark.copyWith(
              systemNavigationBarColor: Colors.transparent,
            ),
      child: SafeArea(
        child: ListView(
          padding: AppStyle.edgeInsetsA4,
          children: [
            AppStyle.vGap12,
            ListTile(
              leading: Image.asset(
                'assets/images/logo.png',
                width: 56,
                height: 56,
              ),
              title: const Text(
                "Simple Live",
                style: TextStyle(height: 1.0),
              ),
              subtitle: const Text("Xem livestream đơn giản"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Get.dialog(AboutDialog(
                  applicationIcon: Image.asset(
                    'assets/images/logo.png',
                    width: 48,
                    height: 48,
                  ),
                  applicationName: "Simple Live",
                  applicationVersion: "Xem livestream đơn giản",
                  applicationLegalese: "Ver ${Utils.packageInfo.version}",
                ));
              },
            ),
            Divider(
              indent: 12,
              endIndent: 12,
              color: Colors.grey.withAlpha(25),
            ),
            _buildCard(
              context,
              children: [
                ListTile(
                  leading: const Icon(Remix.history_line),
                  title: const Text("Lịch sử xem"),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    Get.toNamed(RoutePath.kHistory);
                  },
                ),
              ],
            ),
            Divider(
              indent: 12,
              endIndent: 12,
              color: Colors.grey.withAlpha(25),
            ),
            ListTile(
              leading: const Icon(Remix.account_circle_line),
              title: const Text("Quản lý tài khoản"),
              trailing: const Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
              onTap: () {
                Get.toNamed(RoutePath.kSettingsAccount);
              },
            ),
            Divider(
              indent: 12,
              endIndent: 12,
              color: Colors.grey.withAlpha(25),
            ),
            ListTile(
              leading: const Icon(Icons.devices),
              title: const Text("Đồng bộ dữ liệu"),
              trailing: const Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
              onTap: () {
                Get.toNamed(RoutePath.kSync);
              },
            ),
            Divider(
              indent: 12,
              endIndent: 12,
              color: Colors.grey.withAlpha(25),
            ),
            ListTile(
              leading: const Icon(Remix.link),
              title: const Text("Phân tích liên kết"),
              trailing: const Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
              onTap: () {
                Get.toNamed(RoutePath.kTools);
              },
            ),
            Divider(
              indent: 12,
              endIndent: 12,
              color: Colors.grey.withAlpha(25),
            ),
            _buildCard(
              context,
              children: [
                ListTile(
                  leading: const Icon(Remix.moon_line),
                  title: const Text("Cài đặt giao diện"),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    Get.toNamed(RoutePath.kAppstyleSetting);
                  },
                ),
                ListTile(
                  leading: const Icon(Remix.home_2_line),
                  title: const Text("Cài đặt trang chủ"),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    Get.toNamed(RoutePath.kSettingsIndexed);
                  },
                ),
                ListTile(
                  leading: const Icon(Remix.play_circle_line),
                  title: const Text("Cài đặt livestream"),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    Get.toNamed(RoutePath.kSettingsPlay);
                  },
                ),
                ListTile(
                  leading: const Icon(Remix.text),
                  title: const Text("Cài đặt danmaku"),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    Get.toNamed(RoutePath.kSettingsDanmu);
                  },
                ),
                ListTile(
                  leading: const Icon(Remix.heart_line),
                  title: const Text("Cài đặt theo dõi"),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    Get.toNamed(RoutePath.kSettingsFollow);
                  },
                ),
                ListTile(
                  leading: const Icon(Remix.timer_2_line),
                  title: const Text("Tự động tắt"),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    Get.toNamed(RoutePath.kSettingsAutoExit);
                  },
                ),
                ListTile(
                  leading: const Icon(Remix.apps_line),
                  title: const Text("Cài đặt khác"),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    Get.toNamed(RoutePath.kSettingsOther);
                  },
                ),
                if (kDebugMode)
                  ListTile(
                    leading: const Icon(Remix.apps_line),
                    title: const Text("Kiểm tra"),
                    trailing: const Icon(
                      Icons.chevron_right,
                      color: Colors.grey,
                    ),
                    onTap: () async {
                      SignalRService signalRService = SignalRService();
                      await signalRService.connect();
                      //Get.toNamed(RoutePath.kTest);
                      var room = await signalRService.createRoom();
                      Log.logPrint(room);
                    },
                  ),
              ],
            ),
            Divider(
              indent: 12,
              endIndent: 12,
              color: Colors.grey.withAlpha(25),
            ),
            _buildCard(
              context,
              children: [
                const ListTile(
                  leading: Icon(Remix.error_warning_line),
                  title: Text("Tuyên bố miễn trách"),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  onTap: Utils.showStatement,
                ),
                ListTile(
                  leading: const Icon(Remix.github_line),
                  title: const Text("Trang chủ mã nguồn mở"),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    launchUrlString(
                      "https://github.com/xiaoyaocz/dart_simple_live",
                      mode: LaunchMode.externalApplication,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, {required List<Widget> children}) {
    return Theme(
      data: Theme.of(context).copyWith(
        listTileTheme: ListTileThemeData(
          shape: RoundedRectangleBorder(borderRadius: AppStyle.radius8),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ),
    );
  }
}
