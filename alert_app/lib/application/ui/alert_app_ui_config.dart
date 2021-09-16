import 'package:flutter/material.dart';

class AlertAppUiConfig {
  // Construtor privado, dessa forma não permitimos que a classe seja instanciada
  AlertAppUiConfig._();
  static String get title => 'ALERT app';

  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color(0xFF334856)),
          titleTextStyle: TextStyle(
              color: Color(0xFF222222),
              fontSize: 18,
              fontWeight: FontWeight.w500),
          centerTitle: true,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF334856),
        )
      );
}
