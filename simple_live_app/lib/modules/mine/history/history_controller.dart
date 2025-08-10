import 'package:simple_live_app/app/controller/base_controller.dart';
import 'package:simple_live_app/app/utils.dart';
import 'package:simple_live_app/i18n/strings.dart';
import 'package:simple_live_app/models/db/history.dart';
import 'package:simple_live_app/services/db_service.dart';

class HistoryController extends BasePageController<History> {
  @override
  Future<List<History>> getData(int page, int pageSize) {
    if (page > 1) {
      return Future.value([]);
    }
    return Future.value(DBService.instance.getHistores());
  }

  void clean() async {
    var result = await Utils.showAlertDialog(S.confirmClearWatchHistory, title: S.clearWatchHistory);
    if (!result) {
      return;
    }
    await DBService.instance.historyBox.clear();
    refreshData();
  }

  void removeItem(History item) async {
    await DBService.instance.historyBox.delete(item.id);
    refreshData();
  }
}
