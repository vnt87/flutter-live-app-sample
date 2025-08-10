import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_live_app/app/utils.dart';
import 'package:simple_live_app/i18n/strings.dart';

class LocalizationDemoPage extends StatelessWidget {
  const LocalizationDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Localization Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Current Language: Vietnamese (vi_VN)',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Utils.showAlertDialog(
                  'Đây là một hộp thoại xác nhận với các nút được bản địa hóa.',
                  title: S.info,
                  confirm: S.confirm,
                  cancel: S.cancel,
                );
              },
              child: const Text('Show Confirmation Dialog'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Utils.showMessageDialog(
                  'Đây là một thông báo đơn giản với nút xác nhận được bản địa hóa.',
                  title: S.success,
                  confirm: S.confirm,
                );
              },
              child: const Text('Show Message Dialog'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Utils.showEditTextDialog(
                  'Nội dung mặc định',
                  title: 'Chỉnh sửa văn bản',
                  hintText: 'Nhập văn bản của bạn...',
                  confirm: S.save,
                  cancel: S.cancel,
                );
              },
              child: const Text('Show Edit Text Dialog'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Utils.showInformationHelpDialog(
                  content: [
                    const Text('Đây là nội dung trợ giúp được bản địa hóa.'),
                    const SizedBox(height: 10),
                    const Text('Tất cả các nút và tiêu đề đều sử dụng bản địa hóa tiếng Việt.'),
                    const SizedBox(height: 10),
                    const Text('Điều này giúp người dùng Việt Nam dễ dàng sử dụng ứng dụng hơn.'),
                  ],
                  title: Text(S.help),
                  actions: [
                    TextButton(
                      onPressed: Get.back,
                      child: Text(S.close),
                    ),
                  ],
                );
              },
              child: const Text('Show Help Dialog'),
            ),
            const SizedBox(height: 20),
            Text(
              'Localized Strings Examples:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(label: Text(S.confirm)),
                Chip(label: Text(S.cancel)),
                Chip(label: Text(S.save)),
                Chip(label: Text(S.delete)),
                Chip(label: Text(S.edit)),
                Chip(label: Text(S.add)),
                Chip(label: Text(S.refresh)),
                Chip(label: Text(S.settings)),
                Chip(label: Text(S.help)),
                Chip(label: Text(S.info)),
                Chip(label: Text(S.success)),
                Chip(label: Text(S.failed)),
                Chip(label: Text(S.copy)),
                Chip(label: Text(S.share)),
                Chip(label: Text(S.search)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}