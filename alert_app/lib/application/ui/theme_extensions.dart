import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  Color get colorBlue => Color(0xFF334856);
  Color get colorOrange => Color(0xFFD97D54);
  Color get colorGrey => Color(0xFFC3CBCE);
  TextStyle titleHeaderStyleText({Color textColor = Colors.white}) => TextStyle(
        color: textColor,
        fontSize: 48,
        fontWeight: FontWeight.bold,
      );
  TextStyle subTitleHeaderStyleText({Color textColor = Colors.white}) => TextStyle(
        color: textColor,
        fontSize: 32,
        fontWeight: FontWeight.w600,
      );
  TextStyle titleStyleText({Color textColor = Colors.white}) => TextStyle(
        color: textColor,
        fontSize: 23,
      );

  TextStyle descriptionStyleText({Color textColor = Colors.white}) => TextStyle(
        color: textColor,
        fontSize: 14,
      );
}
