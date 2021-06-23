// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `YiZhiLiveLesson`
  String get appName {
    return Intl.message(
      'YiZhiLiveLesson',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get homepageTitle {
    return Intl.message(
      'Home',
      name: 'homepageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Please input your username`
  String get usernameHintText {
    return Intl.message(
      'Please input your username',
      name: 'usernameHintText',
      desc: '',
      args: [],
    );
  }

  /// `Please input your password`
  String get passwordHintText {
    return Intl.message(
      'Please input your password',
      name: 'passwordHintText',
      desc: '',
      args: [],
    );
  }

  /// `Username is required`
  String get usernameIsRequired {
    return Intl.message(
      'Username is required',
      name: 'usernameIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get passwordIsRequired {
    return Intl.message(
      'Password is required',
      name: 'passwordIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Your email is required`
  String get emailIsRequired {
    return Intl.message(
      'Your email is required',
      name: 'emailIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Your phone number is required`
  String get phoneNumberIsRequired {
    return Intl.message(
      'Your phone number is required',
      name: 'phoneNumberIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please provide a valid email address`
  String get emailIsInvalid {
    return Intl.message(
      'Please provide a valid email address',
      name: 'emailIsInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Please provide a valid phone number`
  String get phoneNumberInvalid {
    return Intl.message(
      'Please provide a valid phone number',
      name: 'phoneNumberInvalid',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}