// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_CN locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh_CN';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "appName" : MessageLookupByLibrary.simpleMessage("易知课堂"),
    "emailIsInvalid" : MessageLookupByLibrary.simpleMessage("请输入正确的邮箱地址"),
    "emailIsRequired" : MessageLookupByLibrary.simpleMessage("邮箱地址不能为空"),
    "homepageTitle" : MessageLookupByLibrary.simpleMessage("首页"),
    "login" : MessageLookupByLibrary.simpleMessage("登录"),
    "logout" : MessageLookupByLibrary.simpleMessage("退出登录"),
    "passwordHintText" : MessageLookupByLibrary.simpleMessage("请输入密码"),
    "passwordIsRequired" : MessageLookupByLibrary.simpleMessage("密码不能为空"),
    "phoneNumberInvalid" : MessageLookupByLibrary.simpleMessage("请输入正确的手机号码"),
    "phoneNumberIsRequired" : MessageLookupByLibrary.simpleMessage("手机号码不能为空"),
    "usernameHintText" : MessageLookupByLibrary.simpleMessage("请输入用户名"),
    "usernameIsRequired" : MessageLookupByLibrary.simpleMessage("用户名不能为空")
  };
}
