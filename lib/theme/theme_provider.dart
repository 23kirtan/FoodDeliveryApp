import 'package:flutter/material.dart';
import 'package:fooddelivery_app/theme/dark_theme.dart';
import 'package:fooddelivery_app/theme/light_theme.dart';
 
class ThemeProvider with ChangeNotifier{

  ThemeData _themedata =  lightmode;

  ThemeData get themeData => _themedata;

  bool get isDarkMode => _themedata == darkmode;

  set themeData(ThemeData themeData){
    _themedata = themeData;
    notifyListeners();
  }
    
    void toggleTheme(){
      if(_themedata == lightmode){
        themeData = darkmode;
      }
      else{
        themeData = lightmode;
      }

    }

}