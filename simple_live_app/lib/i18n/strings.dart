import 'package:get/get.dart';

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
  
  // Navigation (moved to navigation tabs section)
  
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
  
  // Danmaku settings
  static String get danmuShield => 'danmu_shield'.tr;
  static String get defaultSwitch => 'default_switch'.tr;
  static String get displayArea => 'display_area'.tr;
  static String get opacity => 'opacity'.tr;
  static String get fontWeight => 'font_weight'.tr;
  static String get scrollSpeed => 'scroll_speed'.tr;
  static String get danmuDurationSubtitle => 'danmu_duration_subtitle'.tr;
  static String get fontStroke => 'font_stroke'.tr;
  static String get topMargin => 'top_margin'.tr;
  static String get bottomMargin => 'bottom_margin'.tr;
  static String get curvedScreenSubtitle => 'curved_screen_subtitle'.tr;
  static String get fontWeightThin => 'font_weight_thin'.tr;
  static String get fontWeightExtraLight => 'font_weight_extra_light'.tr;
  static String get fontWeightLight => 'font_weight_light'.tr;
  static String get fontWeightNormal => 'font_weight_normal'.tr;
  static String get fontWeightMedium => 'font_weight_medium'.tr;
  static String get fontWeightSemiBold => 'font_weight_semi_bold'.tr;
  static String get fontWeightBold => 'font_weight_bold'.tr;
  static String get fontWeightExtraBold => 'font_weight_extra_bold'.tr;
  static String get fontWeightBlack => 'font_weight_black'.tr;
  
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
  
  // Bilibili login
  static String get bilibiliLoginRequired => 'bilibili_login_required'.tr;
  static String get loginBilibili => 'login_bilibili'.tr;
  static String get noMorePrompt => 'no_more_prompt'.tr;
  static String get loginIncomplete => 'login_incomplete'.tr;
  
  // Appearance settings
  static String get appearanceSettings => 'appearance_settings'.tr;
  static String get displayTheme => 'display_theme'.tr;
  static String get followSystem => 'follow_system'.tr;
  static String get lightMode => 'light_mode'.tr;
  static String get darkMode => 'dark_mode'.tr;
  static String get themeColor => 'theme_color'.tr;
  static String get dynamicColor => 'dynamic_color'.tr;
  
  // Homepage settings
  static String get homepageSettings => 'homepage_settings'.tr;
  static String get homepageSort => 'homepage_sort'.tr;
  static String get platformSort => 'platform_sort'.tr;
  
  // Follow settings
  static String get followSettings => 'follow_settings'.tr;
  static String get autoUpdateFollowStatus => 'auto_update_follow_status'.tr;
  static String get autoUpdateInterval => 'auto_update_interval'.tr;
  static String get updateThreads => 'update_threads'.tr;
  static String get multithreadWarning => 'multithread_warning'.tr;
  
  // Sync settings (moved to sync messages section)
  
  // Navigation tabs
  static String get home => 'home'.tr;
  static String get follow => 'follow'.tr;
  static String get category => 'category'.tr;
  static String get mine => 'mine'.tr;
  
  // Follow actions
  static String get followUser => 'follow_user_action'.tr;
  static String get unfollowUser => 'unfollow_user_action'.tr;
  static String get confirmUnfollow => 'confirm_unfollow_user'.tr;
  static String get unfollowTitle => 'unfollow_title'.tr;
  
  // Sync messages
  static String get syncSuccess => 'sync_success'.tr;
  static String get syncFailed => 'sync_failed'.tr;
  static String get syncInProgress => 'sync_in_progress'.tr;
  static String get syncData => 'sync_data'.tr;
  static String get scanQR => 'scan_qr'.tr;
  static String get remoteSync => 'remote_sync'.tr;
  static String get createRoom => 'create_room'.tr;
  static String get createRoomSubtitle => 'create_room_subtitle'.tr;
  static String get joinRoom => 'join_room'.tr;
  static String get joinRoomSubtitle => 'join_room_subtitle'.tr;
  static String get enterRoomCode => 'enter_room_code'.tr;
  static String get roomCodeEmpty => 'room_code_empty'.tr;
  static String get roomCodeLength => 'room_code_length'.tr;
  static String get webdavSync => 'webdav_sync'.tr;
  static String get localSync => 'local_sync'.tr;
  static String get localSyncSubtitle => 'local_sync_subtitle'.tr;
  static String get clickToLogin => 'click_to_login'.tr;
  static String get loginToSyncData => 'login_to_sync_data'.tr;
  static String get loggedIn => 'logged_in'.tr;
  static String get uploadToCloud => 'upload_to_cloud'.tr;
  static String get lastUpload => 'last_upload'.tr;
  static String get restoreToDevice => 'restore_to_device'.tr;
  static String get lastRestore => 'last_restore'.tr;
  static String get syncOptions => 'sync_options'.tr;
  static String get syncFollowList => 'sync_follow_list'.tr;
  static String get syncPlayHistory => 'sync_play_history'.tr;
  static String get syncBlockWords => 'sync_block_words'.tr;
  static String get syncBilibiliAccount => 'sync_bilibili_account'.tr;
  static String get createRoomFailed => 'create_room_failed'.tr;
  static String get joinRoomFailed => 'join_room_failed'.tr;
  static String get syncedFollowList => 'synced_follow_list'.tr;
  static String get syncedBilibiliAccount => 'synced_bilibili_account'.tr;
  static String get sentFollowList => 'sent_follow_list'.tr;
  static String get sentBilibiliAccount => 'sent_bilibili_account'.tr;
  static String get notLoggedInBilibili => 'not_logged_in_bilibili'.tr;
  static String get syncedFollowAndTags => 'synced_follow_and_tags'.tr;
}