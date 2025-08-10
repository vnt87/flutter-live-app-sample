import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_live_app/app/app_style.dart';
import 'package:simple_live_app/app/sites.dart';
import 'package:simple_live_app/app/utils.dart';
import 'package:simple_live_app/modules/mine/history/history_controller.dart';
import 'package:simple_live_app/routes/app_navigation.dart';
import 'package:simple_live_app/widgets/net_image.dart';
import 'package:simple_live_app/widgets/page_grid_view.dart';
import 'package:simple_live_app/i18n/strings.dart';

class HistoryPage extends GetView<HistoryController> {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rowCount = MediaQuery.of(context).size.width ~/ 500;
    if (rowCount < 1) rowCount = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(S.watchHistory),
        actions: [
          TextButton.icon(
            onPressed: controller.clean,
            icon: const Icon(Icons.delete_outline),
            label: Text(S.clear),
          ),
        ],
      ),
      body: PageGridView(
        crossAxisSpacing: 12,
        crossAxisCount: rowCount,
        pageController: controller,
        firstRefresh: true,
        itemBuilder: (_, i) {
          var item = controller.list[i];
          var site = Sites.allSites[item.siteId]!;
          return Dismissible(
            key: ValueKey(item.id),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              padding: AppStyle.edgeInsetsA12,
              alignment: Alignment.centerRight,
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            confirmDismiss: (direction) async {
              return await Utils.showAlertDialog(S.confirmDeleteRecord, title: S.deleteRecord);
            },
            onDismissed: (_) {
              controller.removeItem(item);
            },
            child: ListTile(
              leading: NetImage(
                item.face,
                width: 48,
                height: 48,
                borderRadius: 24,
              ),
              title: Text(item.userName),
              subtitle: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset(
                          site.logo,
                          width: 20,
                        ),
                        AppStyle.hGap4,
                        Text(
                          site.name,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    Utils.parseTime(item.updateTime),
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              onTap: () {
                AppNavigator.toLiveRoomDetail(site: site, roomId: item.roomId);
              },
              onLongPress: () async {
                var result =
                    await Utils.showAlertDialog(S.confirmDeleteRecord, title: S.deleteRecord);
                if (!result) {
                  return;
                }
                controller.removeItem(item);
              },
            ),
          );
        },
      ),
    );
  }
}
