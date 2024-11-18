import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = ThemeData.light();
  TextStyle _textStyle = GoogleFonts.roboto();

  ThemeData get themeData => _themeData;
  TextStyle get textStyle => _textStyle;

  void setTheme(String themeName) {
    switch (themeName) {
      case 'ThemeA':
        _themeData = ThemeData(
          primaryColor: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          buttonTheme: ButtonThemeData(buttonColor: Colors.blueAccent),
        );
        break;
      case 'ThemeB':
        _themeData = ThemeData(
          primaryColor: Colors.orange,
          scaffoldBackgroundColor: Colors.orange[50],
          buttonTheme: ButtonThemeData(buttonColor: Colors.orangeAccent),
        );
        break;
      case 'ThemeC':
        _themeData = ThemeData(
          primaryColor: Colors.green,
          scaffoldBackgroundColor: Colors.lightGreen[100],
          buttonTheme: ButtonThemeData(buttonColor: Colors.greenAccent),
        );
        break;
    }
    notifyListeners();
  }

  void setFont(String fontName) {
    switch (fontName) {
      case 'Roboto':
        _textStyle = GoogleFonts.roboto();
        break;
      case 'Pacifico':
        _textStyle = GoogleFonts.pacifico();
        break;
      case 'SourceCodePro':
        _textStyle = GoogleFonts.sourceCodePro(); // Pastikan nama ini benar
        break;
      default:
        _textStyle = GoogleFonts.roboto();
    }
    notifyListeners();
  }
}
