import 'package:flutter/material.dart';
import 'pages/receitas_indiana.dart';
import 'pages/receitas_italiana.dart';
import 'pages/receitas_francesas.dart';
import 'pages/receitas_japonesas.dart';
import 'pages/receitas_mexicana.dart';
import 'pages/home_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (_) => HomeScreen(),
      '/italiana': (_) => ReceitasItalianas(),
      '/japonesa': (_) => ReceitasJaponesas(),
      '/francesa': (_) => ReceitasFrancesas(),
      '/indiana': (_) => ReceitasIndianas(),
      '/mexicana': (_) => ReceitasMexicanas(),
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
