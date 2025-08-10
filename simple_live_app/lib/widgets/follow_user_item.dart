import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';
import 'package:simple_live_app/app/app_style.dart';
import 'package:simple_live_app/app/sites.dart';
import 'package:simple_live_app/models/db/follow_user.dart';
import 'package:simple_live_app/widgets/net_image.dart';
import 'dart:ui' as ui;

class FollowUserItem extends StatelessWidget {
  final FollowUser item;
  final Function()? onRemove;
  final Function()? onTap;
  final Function()? onLongPress;
  final bool playing;
  const FollowUserItem({
    required this.item,
    this.onRemove,
    this.onTap,
    this.onLongPress,
    this.playing = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var site = Sites.allSites[item.siteId]!;
    return ListTile(
      contentPadding: AppStyle.edgeInsetsL16.copyWith(right: 4),
      leading: NetImage(
        item.face,
        width: 48,
        height: 48,
        borderRadius: 24,
      ),
      title: Text.rich(
        TextSpan(
          text: item.userName,
          children: [
            WidgetSpan(
              alignment: ui.PlaceholderAlignment.middle,
              child: Obx(
                () => Offstage(
                  offstage: item.liveStatus.value == 0,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppStyle.hGap12,
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: item.liveStatus.value == 2
                              ? Colors.green
                              : Colors.grey,
                          borderRadius: AppStyle.radius12,
                        ),
                      ),
                      AppStyle.hGap4,
                      Text(
                        getStatus(item.liveStatus.value),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color:
                              item.liveStatus.value == 2 ? null : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      subtitle: Wrap(
        runSpacing: 1.0,
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
            overflow: TextOverflow.ellipsis,
          ),
          if (playing)
            Padding(
              padding: AppStyle.edgeInsetsL8,
              child: Text(
                "Đang xem",
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          else if (item.liveStatus.value == 2 && item.liveStartTime != null)
            Padding(
              padding: AppStyle.edgeInsetsL8,
              child: Text(
                'Đã phát sóng ${formatLiveDuration(item.liveStartTime)}',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
        ],
      ),
      trailing: playing
          ? const SizedBox(
              width: 64,
              child: Center(
                child: Icon(
                  Icons.play_arrow,
                ),
              ),
            )
          : (onRemove == null
              ? null
              : IconButton(
                  onPressed: () {
                    onRemove?.call();
                  },
                  icon: const Icon(Remix.dislike_line),
                )),
      onTap: onTap,
      onLongPress: onLongPress,
    );
  }

  String getStatus(int status) {
    if (status == 0) {
      return "Đang tải";
    } else if (status == 1) {
      return "Chưa phát sóng";
    } else {
      return "Đang phát sóng";
    }
  }

  String formatLiveDuration(String? startTimeStampString) {
    if (startTimeStampString == null ||
        startTimeStampString.isEmpty ||
        startTimeStampString == "0") {
      return "";
    }
    try {
      int startTimeStamp = int.parse(startTimeStampString);
      int currentTimeStamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      int durationInSeconds = currentTimeStamp - startTimeStamp;

      int hours = durationInSeconds ~/ 3600;
      int minutes = (durationInSeconds % 3600) ~/ 60;

      String hourText = hours > 0 ? '${hours} giờ' : '';
      String minuteText = minutes > 0 ? '${minutes} phút' : '';

      if (hours == 0 && minutes == 0) {
        return "Dưới 1 phút";
      }

      return '$hourText$minuteText';
    } catch (e) {
      print('Lỗi định dạng thời lượng phát sóng: $e');
      return "-- giờ -- phút";
    }
  }
}
