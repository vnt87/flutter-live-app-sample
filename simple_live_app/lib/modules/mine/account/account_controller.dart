import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_live_app/app/utils.dart';
import 'package:simple_live_app/routes/route_path.dart';
import 'package:simple_live_app/services/bilibili_account_service.dart';

class AccountController extends GetxController {
  void bilibiliTap() async {
    if (BiliBiliAccountService.instance.logined.value) {
      var result = await Utils.showAlertDialog("Bạn có chắc chắn muốn đăng xuất tài khoản Bilibili không?", title: "Đăng xuất");
      if (result) {
        BiliBiliAccountService.instance.logout();
      }
    } else {
      //AppNavigator.toBiliBiliLogin();
      bilibiliLogin();
    }
  }

  void bilibiliLogin() {
    Utils.showBottomSheet(
      title: "Đăng nhập Bilibili",
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: Platform.isAndroid || Platform.isIOS,
            child: ListTile(
              leading: const Icon(Icons.account_circle_outlined),
              title: const Text("Đăng nhập Web"),
              subtitle: const Text("Nhập tên người dùng và mật khẩu để đăng nhập"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Get.back();
                Get.toNamed(RoutePath.kBiliBiliWebLogin);
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.qr_code),
            title: const Text("Đăng nhập bằng QR"),
            subtitle: const Text("Sử dụng ứng dụng Bilibili để quét mã QR đăng nhập"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Get.back();
              Get.toNamed(RoutePath.kBiliBiliQRLogin);
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit_outlined),
            title: const Text("Đăng nhập bằng Cookie"),
            subtitle: const Text("Nhập Cookie thủ công để đăng nhập"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Get.back();
              doCookieLogin();
            },
          ),
        ],
      ),
    );
  }

  void doCookieLogin() async {
    var cookie = await Utils.showEditTextDialog(
      "",
      title: "Vui lòng nhập Cookie",
      hintText: "Vui lòng nhập Cookie",
    );
    if (cookie == null || cookie.isEmpty) {
      return;
    }
    BiliBiliAccountService.instance.setCookie(cookie);
    await BiliBiliAccountService.instance.loadUserInfo();
  }
}
