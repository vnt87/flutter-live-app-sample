import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:simple_live_app/app/app_style.dart';
import 'package:simple_live_app/modules/mine/account/bilibili/qr_login_controller.dart';

class BiliBiliQRLoginPage extends GetView<BiliBiliQRLoginController> {
  const BiliBiliQRLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Đăng nhập tài khoản Bilibili")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () {
                if (controller.qrStatus.value == QRStatus.loading) {
                  return const CircularProgressIndicator();
                }
                if (controller.qrStatus.value == QRStatus.failed) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Tải mã QR thất bại"),
                      TextButton(
                        onPressed: controller.loadQRCode,
                        child: const Text("Thử lại"),
                      ),
                    ],
                  );
                }
                if (controller.qrStatus.value == QRStatus.failed) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Mã QR đã hết hạn"),
                      TextButton(
                        onPressed: controller.loadQRCode,
                        child: const Text("Làm mới mã QR"),
                      ),
                    ],
                  );
                }
                return Column(
                  children: [
                    ClipRRect(
                      borderRadius: AppStyle.radius12,
                      child: QrImageView(
                        data: controller.qrcodeUrl.value,
                        version: QrVersions.auto,
                        backgroundColor: Colors.white,
                        size: 200.0,
                        padding: AppStyle.edgeInsetsA12,
                      ),
                    ),
                    AppStyle.vGap8,
                    Visibility(
                      visible: controller.qrStatus.value == QRStatus.scanned,
                      child: const Text("Đã quét, vui lòng xác nhận đăng nhập trên điện thoại"),
                    ),
                  ],
                );
              },
            ),
          ),
          const Padding(
            padding: AppStyle.edgeInsetsA24,
            child: Text(
              "Vui lòng sử dụng ứng dụng Bilibili trên điện thoại để quét mã QR đăng nhập",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
