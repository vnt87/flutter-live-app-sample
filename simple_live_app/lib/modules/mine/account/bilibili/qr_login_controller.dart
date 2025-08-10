import 'dart:async';

import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:simple_live_app/app/log.dart';
import 'package:simple_live_app/requests/http_client.dart';
import 'package:simple_live_app/services/bilibili_account_service.dart';

enum QRStatus {
  loading,
  unscanned,
  scanned,
  expired,
  failed,
}

class BiliBiliQRLoginController extends GetxController {
  @override
  void onInit() {
    loadQRCode();
    super.onInit();
  }

  Timer? timer;

  var qrcodeUrl = "".obs;
  var qrcodeKey = "";

  /// Trạng thái mã QR
  /// - [0] Đang tải
  /// - [1] Chưa quét
  /// - [2] Đã quét, chờ xác nhận
  /// - [3] Mã QR đã hết hạn
  /// - [4] Đăng nhập thất bại
  Rx<QRStatus> qrStatus = QRStatus.loading.obs;

  void loadQRCode() async {
    try {
      qrStatus.value = QRStatus.loading;

      var result = await HttpClient.instance.getJson(
        "https://passport.bilibili.com/x/passport-login/web/qrcode/generate",
      );
      if (result["code"] != 0) {
        throw result["message"];
      }
      qrcodeKey = result["data"]["qrcode_key"];
      qrcodeUrl.value = result["data"]["url"];
      qrStatus.value = QRStatus.unscanned;
      startPoll();
    } catch (e) {
      Log.logPrint(e);
      SmartDialog.showToast(e.toString());
      qrStatus.value = QRStatus.failed;
    }
  }

  void startPoll() {
    timer = Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        pollQRStatus();
      },
    );
  }

  void pollQRStatus() async {
    try {
      var response = await HttpClient.instance.get(
        "https://passport.bilibili.com/x/passport-login/web/qrcode/poll",
        queryParameters: {
          "qrcode_key": qrcodeKey,
        },
      );
      if (response.data["code"] != 0) {
        throw response.data["message"];
      }
      var data = response.data["data"];
      var code = data["code"];
      if (code == 0) {
        var cookies = <String>[];
        response.headers["set-cookie"]?.forEach((element) {
          var cookie = element.split(";")[0];
          cookies.add(cookie);
        });
        if (cookies.isNotEmpty) {
          var cookieStr = cookies.join(";");
          Log.i(cookieStr);
          BiliBiliAccountService.instance.setCookie(cookieStr);
          await BiliBiliAccountService.instance.loadUserInfo();
          Get.back();
        }
      } else if (code == 86038) {
        qrStatus.value = QRStatus.expired;
        qrcodeKey = "";
        timer?.cancel();
      } else if (code == 86090) {
        qrStatus.value = QRStatus.scanned;
      }
    } catch (e) {
      Log.logPrint(e);
      SmartDialog.showToast(e.toString());
    }
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }
}
