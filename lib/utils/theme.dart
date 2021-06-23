
import 'package:flutter/material.dart';
import 'package:jwx_flutter/utils/colors.dart';

final ThemeData jwxTheme = _buildJWXTheme();

ThemeData _buildJWXTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: base.colorScheme.copyWith(
      primary: jwxPink100,
      onPrimary: jwxBrown900,
      secondary: jwxBrown900,
      error: jwxErrorRed,
    ),
    appBarTheme: base.appBarTheme.copyWith(
      backwardsCompatibility: false,
    ),
    textTheme: _buildJWXTextTheme(base.textTheme),
    primaryTextTheme: _buildJWXTextTheme(base.primaryTextTheme),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: jwxPink100,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.white70),
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0.0),
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0.0),
        borderSide: BorderSide(color: Colors.white),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0.0),
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0.0),
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0.0),
        borderSide: BorderSide(color: jwxErrorRed),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0.0),
        borderSide: BorderSide(color: jwxErrorRed),
      ),
    ),
    accentTextTheme: _buildJWXTextTheme(base.accentTextTheme),
    iconTheme: _buildJWXIconTheme(base.iconTheme),
    buttonTheme: _buildJWXButtonTheme(base.buttonTheme),
  );
}

TextTheme _buildJWXTextTheme(TextTheme base) {
  return base.copyWith(
    headline5: base.headline5.copyWith(
      fontWeight: FontWeight.w500,
    ),
    headline6: base.headline6.copyWith(
        fontSize: 18.0
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
    bodyText1: base.bodyText1.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
  ).apply(
    fontFamily: 'Rubik',
    displayColor: jwxBrown900,
    bodyColor: jwxBrown900,
  );
}

IconThemeData _buildJWXIconTheme(IconThemeData original) {
  return original.copyWith(color: jwxBrown900);
}

ButtonThemeData _buildJWXButtonTheme(ButtonThemeData original) {
  return original.copyWith(buttonColor: jwxPrimaryColor);
}
