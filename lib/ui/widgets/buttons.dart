import 'package:flutter/material.dart';
import 'package:jwx_flutter/utils/colors.dart';

MaterialButton longButtons(String title, Function onPressed,
    {Color color: jwxPrimaryColor, Color textColor: Colors.white}) {
  return MaterialButton(
    onPressed: onPressed,
    textColor: textColor,
    color: color,
    child: SizedBox(
      width: double.infinity,
      child: Text(
        title,
        textAlign: TextAlign.center,
      ),
    ),
    height: 45,
    minWidth: 600,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(0))),
  );
}