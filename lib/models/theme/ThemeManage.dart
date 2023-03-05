import 'package:flutter/material.dart';



class thememanage with ChangeNotifier{

  ThemeMode _thememode = ThemeMode.light;

  get thememod => _thememode;

   toggleTheme(bool isDarkmode){
    _thememode = isDarkmode?ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }


}
  
