import 'package:get/get.dart';
import 'package:simple_live_app/i18n/app_localizations.dart';

class S {
  // Common
  static String get confirm => 'confirm'.tr;
  static String get cancel => 'cancel'.tr;
  static String get close => 'close'.tr;
  static String get save => 'save'.tr;
  static String get delete => 'delete'.tr;
  static String get edit => 'edit'.tr;
  static String get add => 'add'.tr;
  static String get refresh => 'refresh'.tr;
  static String get loading => 'loading'.tr;
  static String get error => 'error'.tr;
  static String get success => 'success'.tr;
  static String get failed => 'failed'.tr;
  static String get copy => 'copy'.tr;
  static String get paste => 'paste'.tr;
  static String get share => 'share'.tr;
  static String get settings => 'settings'.tr;
  static String get help => 'help'.tr;
  static String get info => 'info'.tr;
  static String get yes => 'yes'.tr;
  static String get no => 'no'.tr;
  static String get back => 'back'.tr;
  static String get next => 'next'.tr;
  static String get previous => 'previous'.tr;
  static String get search => 'search'.tr;
  static String get clear => 'clear'.tr;
  static String get export => 'export'.tr;
  static String get import => 'import'.tr;
  static String get connect => 'connect'.tr;
  static String get disconnect => 'disconnect'.tr;
  static String get send => 'send'.tr;
  static String get receive => 'receive'.tr;
  static String get sync => 'sync'.tr;
  static String get login => 'login'.tr;
  static String get logout => 'logout'.tr;
  static String get disclaimer => 'disclaimer'.tr;
  
  // Navigation
  static String get home => 'home'.tr;
  static String get follow => 'follow'.tr;
  static String get history => 'history'.tr;
  static String get mine => 'mine'.tr;
  
  // Live Room
  static String get liveRoom => 'live_room'.tr;
  static String get notStreaming => 'not_streaming'.tr;
  static String get copyInfo => 'copy_info'.tr;
  static String get playInfo => 'play_info'.tr;
  static String lineNumber(int number) => 'line_number'.trParams({'number': number.toString()});
  static String get quality => 'quality'.tr;
  static String get fit => 'fit'.tr;
  static String get stretch => 'stretch'.tr;
  static String get fill => 'fill'.tr;
  static String get followList => 'follow_list'.tr;
  
  // Additional live room properties
  static String get bubbleStyle => 'bubble_style'.tr;
  static String get moreSettings => 'more_settings'.tr;
  static String get keywordBlocking => 'keyword_blocking'.tr;
  static String get danmakuSettings => 'danmaku_settings'.tr;
  static String get timerClose => 'timer_close'.tr;
  static String get screenSize => 'screen_size'.tr;
  static String get line => 'line'.tr;
  static String get unfollow => 'unfollow'.tr;
  static String get copyLink => 'copy_link'.tr;
  static String get copyPlayUrl => 'copy_play_url'.tr;
  static String get chat => 'chat'.tr;
  static String get latest => 'latest'.tr;
  static String get chatArea => 'chat_area'.tr;
  static String get fontSize => 'font_size'.tr;
  static String get lineSpacing => 'line_spacing'.tr;
  static String get liveRoomLoadFailed => 'live_room_loading_failed'.tr;
  static String get unknownError => 'unknown_error'.tr;
  static String get room => 'room'.tr;
  
  // Utils and permissions
  static String get albumPermissionRequired => 'album_permission_required'.tr;
  static String get storagePermissionRequired => 'storage_permission_required'.tr;
  static String get copiedToClipboard => 'copied_to_clipboard'.tr;
  static String get copyFailed => 'copy_failed'.tr;
  static String get cannotReadClipboard => 'cannot_read_clipboard'.tr;
  static String get readClipboardFailed => 'read_clipboard_failed'.tr;
  static String get noAlbumPermission => 'no_album_permission'.tr;
  static String get screenshotFailedEmpty => 'screenshot_failed_empty'.tr;
  static String get screenshotSavedToAlbum => 'screenshot_saved_to_album'.tr;
  static String get saveCancelled => 'save_cancelled'.tr;
  static String screenshotSavedToPath(String path) => 'screenshot_saved_to_path'.trParams({'path': path});
  static String get screenshotFailed => 'screenshot_failed'.tr;
  static String get deviceNotSupportPip => 'device_not_support_pip'.tr;
  static String get savingScreenshot => 'saving_screenshot'.tr;
}