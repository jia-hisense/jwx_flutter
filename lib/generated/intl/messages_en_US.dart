// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
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
  String get localeName => 'en_US';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "appName" : MessageLookupByLibrary.simpleMessage("YiZhiLiveLesson"),
    "emailIsInvalid" : MessageLookupByLibrary.simpleMessage("Please provide a valid email address"),
    "emailIsRequired" : MessageLookupByLibrary.simpleMessage("Your email is required"),
    "homepageTitle" : MessageLookupByLibrary.simpleMessage("Home"),
    "login" : MessageLookupByLibrary.simpleMessage("Login"),
    "logout" : MessageLookupByLibrary.simpleMessage("Logout"),
    "passwordHintText" : MessageLookupByLibrary.simpleMessage("Please input your password"),
    "passwordIsRequired" : MessageLookupByLibrary.simpleMessage("Password is required"),
    "phoneNumberInvalid" : MessageLookupByLibrary.simpleMessage("Please provide a valid phone number"),
    "phoneNumberIsRequired" : MessageLookupByLibrary.simpleMessage("Your phone number is required"),
    "usernameHintText" : MessageLookupByLibrary.simpleMessage("Please input your username"),
    "usernameIsRequired" : MessageLookupByLibrary.simpleMessage("Username is required")
  };
}
