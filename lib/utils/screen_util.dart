import 'package:flutter/widgets.dart';

class ScreenUtil {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeWidth;      // 1%屏幕宽度
  static double blockSizeHeight;     // 1%屏幕高度

  static double safeAreaWidth;
  static double safeAreaHeight;
  static double safeBlockWidth;     // 1%屏幕安全区宽度
  static double safeBlockHeight;    // 1%屏幕安全区高度度

  static void initData(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeWidth = screenWidth / 100;
    blockSizeHeight = screenHeight / 100;

    safeAreaWidth = _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    safeAreaHeight = _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockWidth = (screenWidth - safeAreaWidth) / 100;
    safeBlockHeight = (screenHeight - safeAreaHeight) / 100;
  }
}
