import 'package:flutter/material.dart';

class AppTheme extends ChangeNotifier {
  static final _instance = AppTheme._();

  AppTheme._();

  factory AppTheme() {
    return _instance;
  }

  get lightTheme =>ThemeData(
        scaffoldBackgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 16, color: Colors.grey),
          titleLarge: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  get darkTheme =>  ThemeData(
        scaffoldBackgroundColor: Colors.grey[900],
        iconTheme: const IconThemeData(color: Colors.white),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 30, color: Colors.grey[200],fontWeight: FontWeight.w900),
          titleLarge: const TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  get themeMode => _themeMode;


  void toggleTheme(BuildContext context){
    print("sdfwqzexrctvhyjuk");  
    switch (_themeMode) {
      case ThemeMode.light:
        _themeMode = ThemeMode.dark;
        break;
      case ThemeMode.dark:
        _themeMode = ThemeMode.light;
        break;
      case ThemeMode.system:
        if (Theme.of(context).scaffoldBackgroundColor == Colors.white) {
          _themeMode = ThemeMode.dark;
        } else {
          _themeMode = ThemeMode.light;
        }
    }

    notifyListeners();
}
}
ThemeMode _themeMode = ThemeMode.system;



