import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      // Custom themedata - light
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.deepPurple,
      ).copyWith(
        secondary: Colors.amber,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.white,
        ),
        bodyText1: TextStyle(
          color: Colors.white,
        ),
      ),
      listTileTheme: ListTileThemeData(
        tileColor: Colors.blue,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.red,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.red,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      // Custom themedata - dark
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.deepOrange,
      ).copyWith(
        secondary: Colors.green,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.white,
        ),
        bodyText1: TextStyle(
          color: Colors.white,
        ),
      ),
      listTileTheme: ListTileThemeData(
        tileColor: Colors.blue,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.red,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.red,
        ),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
