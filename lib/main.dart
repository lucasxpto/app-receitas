import 'package:flutter/material.dart';
import 'package:ro_roamer/pages/francesa_screen.dart';
import 'package:ro_roamer/pages/indiana_screen.dart';
import 'package:ro_roamer/pages/japonesa_screen.dart';
import 'package:ro_roamer/pages/mexicana_screen.dart';
import 'pages/italiana_screen.dart';
import 'pages/home_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (_) => HomeScreen(),
      '/italiana': (_) => ItalianaScreen(),
      '/japonesa': (_) => JaponesaScreen(),
      '/francesa': (_) => FrancesaScreen(),
      '/indiana': (_) => IndianaScreen(),
      '/mexicana': (_) => MexicanaScreen(),
    },
    theme: ThemeData(
      popupMenuTheme: PopupMenuThemeData(
        textStyle: TextStyle(
          color: Colors.orangeAccent,
          fontSize: 18,
        ),
        color: Colors.black,
      ),
    ),
  ));
}
