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
  static String get searchHint => 'searchHint'.tr;
  static String get room => 'room'.tr;
  static String get streamer => 'streamer'.tr;
  static String get danmuShield => 'danmu_shield'.tr;
  static String get enterKeywordOrRegex => 'enterKeywordOrRegex'.tr;
  static String get regexHint => 'regexHint'.tr;
  static String addedKeywords(int count) => 'added_keywords'.trParams({'count': count.toString()});
  static String get watchHistory => 'watchHistory'.tr;
  static String get confirmDeleteRecord => 'confirmDeleteRecord'.tr;
  static String get deleteRecord => 'deleteRecord'.tr;
  static String get otherSettings => 'otherSettings'.tr;
  static String get exportConfig => 'exportConfig'.tr;
  static String get importConfig => 'importConfig'.tr;
  static String get resetConfig => 'resetConfig'.tr;
  static String get playerAdvancedSettings => 'playerAdvancedSettings'.tr;
  static String get playerSettingsWarning => 'playerSettingsWarning'.tr;
  static String get mpvDocumentation => 'mpvDocumentation'.tr;
  static String get customOutputDriver => 'customOutputDriver'.tr;
  static String get videoOutputDriver => 'videoOutputDriver'.tr;
  static String get audioOutputDriver => 'audioOutputDriver'.tr;
  static String get hardwareDecoder => 'hardwareDecoder'.tr;
  static String get logging => 'logging'.tr;
  static String get enableLogging => 'enableLogging'.tr;
  static String get loggingSubtitle => 'loggingSubtitle'.tr;
  static String get logList => 'logList'.tr;
  static String get clearLogs => 'clearLogs'.tr;
  static String get autoExitSettings => 'autoExitSettings'.tr;
  static String get enableAutoExit => 'enableAutoExit'.tr;
  static String get autoExitTime => 'autoExitTime'.tr;
  static String timeFormat(int hours, int minutes) => 'timeFormat'.trParams({'hours': hours.toString(), 'minutes': minutes.toString()});
  static String get autoExitSubtitle => 'autoExitSubtitle'.tr;

  // Play Settings Page
  static String get hardwareDecodeSubtitle => 'hardware_decode_subtitle'.tr;
  static String get compatibilityModeSubtitle => 'compatibility_mode_subtitle'.tr;
  static String get autoPauseInBackground => 'auto_pause_in_background'.tr;
  static String get useHttpsLinksSubtitle => 'use_https_links_subtitle'.tr;
  static String get autoFullScreenOnEnter => 'auto_full_screen_on_enter'.tr;
  static String get hideDanmuInPip => 'hide_danmu_in_pip'.tr;
  static String get defaultQuality => 'default_quality'.tr;
  static String get lowest => 'lowest'.tr;
  static String get medium => 'medium'.tr;
  static String get highest => 'highest'.tr;
  static String get cellularQuality => 'cellular_quality'.tr;
  static String get textSize => 'text_size'.tr;
  static String get verticalSpacing => 'vertical_spacing'.tr;
  static String get copyLink => 'copy_link'.tr;
  static String get copyPlayUrl => 'copy_play_url'.tr;
  static String get chat => 'chat'.tr;
  static String get latest => 'latest'.tr;
  static String get fontSize => 'font_size'.tr;
  static String get lineSpacing => 'line_spacing'.tr;
  static String get liveRoomLoadFailed => 'live_room_loading_failed'.tr;
  static String get unknownError => 'unknown_error'.tr;
  
  // Danmaku settings
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
  
  // Live room related
  static String get danmakuServerConnected => 'danmaku_server_connected'.tr;
  static String get readingRoomInfo => 'reading_room_info'.tr;
  static String get streamerNotLive => 'streamer_not_live'.tr;
  static String get connectingDanmaku => 'connecting_danmaku'.tr;
  static String get playFailed => 'play_failed'.tr;
  static String get cannotReadPlayUrl => 'cannot_read_play_url'.tr;
  static String get cannotReadQuality => 'cannot_read_quality'.tr;
  static String get copiedRoomLink => 'copied_room_link'.tr;
  static String get copiedPlayUrl => 'copied_play_url'.tr;
  static String get switchQuality => 'switch_quality'.tr;
  static String get switchLine => 'switch_line'.tr;
  static String get keywordBlock => 'keyword_block'.tr;
  static String get inputKeyword => 'input_keyword'.tr;
  static String get enableTimerClose => 'enable_timer_close'.tr;
  static String get autoCloseTime => 'auto_close_time'.tr;
  static String get globalTimerSet => 'global_timer_set'.tr;
  static String get cannotOpenApp => 'cannot_open_app'.tr;
  static String get copiedErrorInfo => 'copied_error_info'.tr;
  static String get enterBackground => 'enter_background'.tr;
  static String get returnForeground => 'return_foreground'.tr;
  static String get autoCloseAfter => 'auto_close_after'.tr;
  static String get delayClose => 'delay_close'.tr;
  static String get delayCloseTitle => 'delay_close_title'.tr;
  static String get delay => 'delay'.tr;
  
  // Follow user related
  static String get followUsers => 'follow_users'.tr;
  static String get all => 'all'.tr;
  static String get living => 'living'.tr;
  static String get notLiving => 'not_living'.tr;
  static String get exportFile => 'export_file'.tr;
  static String get importFile => 'import_file'.tr;
  static String get exportText => 'export_text'.tr;
  static String get importText => 'import_text'.tr;
  static String get tagManagement => 'tag_management'.tr;
  static String get setTag => 'set_tag'.tr;
  static String get addTag => 'add_tag'.tr;
  static String get editTag => 'edit_tag'.tr;
  static String get tagNameDuplicate => 'tag_name_duplicate'.tr;
  static String get modifySuccess => 'modify_success'.tr;
  static String get confirmUnfollowUser => 'confirm_unfollow_user'.tr;
  
  // Search related
  static String get searchPlaceholder => 'search_placeholder'.tr;
  
  // History related
  static String get clearHistory => 'clear_history'.tr;
  static String get confirmClearHistory => 'confirm_clear_history'.tr;
  
  // Settings related
  static String get advancedSettingsWarning => 'advanced_settings_warning'.tr;
  static String get logRecording => 'log_recording'.tr;
  static String get enableLogRecording => 'enable_log_recording'.tr;
  static String get logRecordingDesc => 'log_recording_desc'.tr;
  
  // Sync device related
  static String get syncFollowListAction => 'sync_follow_list_action'.tr;
  static String get syncWatchHistory => 'sync_watch_history'.tr;
  static String get syncDanmakuBlock => 'sync_danmaku_block'.tr;
  static String get syncBilibiliAccountAction => 'sync_bilibili_account_action'.tr;
  
  // Local sync related
  static String get lanDataSync => 'lan_data_sync'.tr;
  static String get clientAddress => 'client_address'.tr;
  static String get inputAddressHint => 'input_address_hint'.tr;
  static String get scanQRCode => 'scan_qr_code'.tr;
  static String get devicesFound => 'devices_found'.tr;
  static String get manualInputTip => 'manual_input_tip'.tr;
  
  // Remote sync room related
  static String get dataSync => 'data_sync'.tr;
  static String get connected => 'connected'.tr;
  static String get connecting => 'connecting'.tr;
  static String get roomAutoClose => 'room_auto_close'.tr;
  static String get roomNumber => 'room_number'.tr;
  static String get syncDataToDevices => 'sync_data_to_devices'.tr;
  static String get sendFollowList => 'send_follow_list'.tr;
  static String get sendWatchHistory => 'send_watch_history'.tr;
  static String get sendBlockWords => 'send_block_words'.tr;
  static String get sendBilibiliAccount => 'send_bilibili_account'.tr;
  static String get connectedDevices => 'connected_devices'.tr;
  static String get creator => 'creator'.tr;
  static String get localDevice => 'local_device'.tr;
  
  // Common messages
  static String get pleaseInputKeyword => 'please_input_keyword'.tr;
  static String get connectionFailed => 'connection_failed'.tr;
  static String get multipleAddressesFound => 'multiple_addresses_found'.tr;
  static String get pleaseSelectAddress => 'please_select_address'.tr;
  static String get serviceStarted => 'service_started'.tr;
  static String get httpServiceNotStarted => 'http_service_not_started'.tr;
  static String get pleaseRestartApp => 'please_restart_app'.tr;
  static String get scanQRToConnect => 'scan_qr_to_connect'.tr;
  static String get dataOverwrite => 'data_overwrite'.tr;
  static String get dataOverwriteQuestion => 'data_overwrite_question'.tr;
  static String get overwrite => 'overwrite'.tr;
  static String get notOverwrite => 'not_overwrite'.tr;
  static String get syncing => 'syncing'.tr;
  static String get syncedHistory => 'synced_history'.tr;
  static String get syncedShieldWords => 'synced_shield_words'.tr;
  static String get noDeviceConnected => 'no_device_connected'.tr;
  static String get sending => 'sending'.tr;
  static String get sentHistory => 'sent_history'.tr;
  static String get sentShieldWords => 'sent_shield_words'.tr;
  static String get sendFailed => 'send_failed'.tr;
  static String get roomInfo => 'room_info'.tr;
  static String get roomDestroyed => 'room_destroyed'.tr;
  
  // Account related
  static String get noLoginRequired => 'no_login_required'.tr;
  
  // Player related
  static String get volume => 'volume'.tr;
  static String get brightness => 'brightness'.tr;
  static String get playerError => 'player_error'.tr;
  static String get playerLog => 'player_log'.tr;
  static String get playerClosed => 'player_closed'.tr;
  
  // Other common strings
  static String get hours => 'hours'.tr;
  static String get minutes => 'minutes'.tr;
  static String get seconds => 'seconds'.tr;
  static String get saveSuccess => 'save_success'.tr;
  static String get exportFailed => 'export_failed'.tr;
  static String get importSuccess => 'import_success'.tr;
  static String get importFailed => 'import_failed'.tr;
  static String get unsupportedConfigFile => 'unsupported_config_file'.tr;
  static String get platformMismatch => 'platform_mismatch'.tr;
  static String get importSuccessRestart => 'import_success_restart'.tr;
  static String get resetAllConfig => 'reset_all_config'.tr;
  static String get resetSuccessRestart => 'reset_success_restart'.tr;
  static String get pleaseCloseLogFirst => 'please_close_log_first'.tr;
  static String get hardwareDecodeDesc => 'hardware_decode_desc'.tr;
  static String get compatibilityModeDesc => 'compatibility_mode_desc'.tr;
  static String get pauseInBackground => 'pause_in_background'.tr;
  static String get useHttpsLinksDesc => 'use_https_links_desc'.tr;
  static String get autoFullscreen => 'auto_fullscreen'.tr;
  static String get mobileQuality => 'mobile_quality'.tr;
  static String get timerCloseSettings => 'timer_close_settings'.tr;
  static String get enableTimerCloseDesc => 'enable_timer_close_desc'.tr;
  static String get autoCloseTimeDesc => 'auto_close_time_desc'.tr;
  static String get danmakuShield => 'danmaku_shield'.tr;
  static String get inputKeywordHint => 'input_keyword_hint'.tr;
  static String get regexTip => 'regex_tip'.tr;
  
  
  // Mine page specific strings
  static String get appSubtitle => 'app_subtitle'.tr;
  static String get linkAnalysis => 'link_analysis'.tr;
  static String get liveStreamSettings => 'live_stream_settings'.tr;
  static String get autoExit => 'auto_exit'.tr;
  static String get test => 'test'.tr;
  static String get openSourceHomepage => 'open_source_homepage'.tr;
  
  // Live status
  static String get streaming => 'streaming'.tr;
  
  // Category
  static String get showAll => 'show_all'.tr;
  
  // Douyin search
  static String get douyinSearchNotSupported => 'douyin_search_not_supported'.tr;
  static String get openBrowser => 'open_browser'.tr;
  
  // Local sync
  static String get pleaseInputAddress => 'please_input_address'.tr;
  static String get manualInput => 'manual_input'.tr;
  static String get deviceInfo => 'device_info'.tr;
  
  // History
  static String get confirmClearWatchHistory => 'confirm_clear_watch_history'.tr;
  static String get clearWatchHistory => 'clear_watch_history'.tr;
  
  // Additional missing sync keys
  static String get syncHistory => 'sync_history'.tr;
  static String get syncBlockedWords => 'sync_blocked_words'.tr;
  static String get enterAddressOrScan => 'enter_address_or_scan'.tr;
  static String get scan => 'scan'.tr;
  static String get discoveredDevices => 'discovered_devices'.tr;
  static String get manualAddressHint => 'manual_address_hint'.tr;
  
  // Missing strings referenced in error messages
  static String get chatArea => 'chat_area'.tr;
  static String get accountManagement => 'account_management'.tr;
  static String get bilibiliAccountInfo => 'bilibili_account_info'.tr;
  static String get liveRoomSettings => 'live_room_settings'.tr;
  static String get player => 'player'.tr;
  static String get hardwareDecode => 'hardware_decode'.tr;
  static String get compatibilityMode => 'compatibility_mode'.tr;
  static String get useHttpsLinks => 'use_https_links'.tr;
  static String get danmuSettings => 'danmu_settings'.tr;
}
