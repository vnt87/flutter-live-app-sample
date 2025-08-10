import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';
import 'package:simple_live_app/app/app_style.dart';
import 'package:simple_live_app/modules/mine/parse/parse_controller.dart';

class ParsePage extends GetView<ParseController> {
  const ParsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phân tích liên kết"),
      ),
      body: ListView(
        padding: AppStyle.edgeInsetsA12,
        children: [
          buildCard(
            context: context,
            child: ExpansionTile(
              title: const Text("Chuyển đến phòng livestream"),
              childrenPadding: AppStyle.edgeInsetsH12,
              initiallyExpanded: true,
              children: [
                TextField(
                  minLines: 3,
                  maxLines: 3,
                  controller: controller.roomJumpToController,
                  textInputAction: TextInputAction.go,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: "Nhập hoặc dán liên kết Bilibili Live/Huya Live/Douyu Live/Douyin Live",
                    contentPadding: AppStyle.edgeInsetsA12,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.withAlpha(50),
                      ),
                    ),
                  ),
                  onSubmitted: controller.jumpToRoom,
                ),
                Container(
                  margin: AppStyle.edgeInsetsB4,
                  width: double.infinity,
                  child: TextButton.icon(
                    onPressed: () {
                      controller
                          .jumpToRoom(controller.roomJumpToController.text);
                    },
                    icon: const Icon(Remix.play_circle_line),
                    label: const Text("Chuyển liên kết"),
                  ),
                ),
              ],
            ),
          ),
          buildCard(
            context: context,
            child: ExpansionTile(
              title: const Text("Lấy liên kết trực tiếp"),
              childrenPadding: AppStyle.edgeInsetsH12,
              initiallyExpanded: true,
              children: [
                TextField(
                  minLines: 3,
                  maxLines: 3,
                  controller: controller.getUrlController,
                  textInputAction: TextInputAction.go,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: "Nhập hoặc dán liên kết Bilibili Live/Huya Live/Douyu Live/Douyin Live",
                    contentPadding: AppStyle.edgeInsetsA12,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.withAlpha(50),
                      ),
                    ),
                  ),
                  onSubmitted: controller.getPlayUrl,
                ),
                Container(
                  margin: AppStyle.edgeInsetsB4,
                  width: double.infinity,
                  child: TextButton.icon(
                    onPressed: () {
                      controller.getPlayUrl(controller.getUrlController.text);
                    },
                    icon: const Icon(Remix.link),
                    label: const Text("Lấy liên kết trực tiếp"),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: AppStyle.edgeInsetsV12,
            child: SelectableText('''Hỗ trợ phân tích các loại liên kết sau:
Bilibili：
https://live.bilibili.com/xxxxx
https://b23.tv/xxxxx
Huya Live：
https://www.huya.com/xxxxx
Douyu Live：
https://www.douyu.com/xxxxx
https://www.douyu.com/topic/xxx?rid=xxx
Douyin Live：
https://v.douyin.com/xxxxx
https://live.douyin.com/xxxxx
https://webcast.amemv.com/webcast/reflow/xxxxx
''', style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }

  Widget buildCard({required BuildContext context, required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: AppStyle.radius8,
        boxShadow: Get.isDarkMode
            ? []
            : [
                BoxShadow(
                  blurRadius: 8,
                  color: Colors.grey.withAlpha(50),
                )
              ],
      ),
      margin: AppStyle.edgeInsetsB12,
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: child,
      ),
    );
  }
}
