import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'pages/receitas_indiana.dart';
import 'pages/receitas_italiana.dart';
import 'pages/receitas_francesas.dart';
import 'pages/receitas_japonesas.dart';
import 'pages/receitas_mexicana.dart';
import 'pages/home_screen.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (_) => const HomeScreen(),
              '/italiana': (_) => const ReceitasItalianas(),
              '/japonesa': (_) => const ReceitasJaponesas(),
              '/francesa': (_) => const ReceitasFrancesas(),
              '/indiana': (_) => const ReceitasIndianas(),
              '/mexicana': (_) => const ReceitasMexicanas(),
            },
            theme: ThemeData(
              popupMenuTheme: const PopupMenuThemeData(
                textStyle: TextStyle(
                  color: Colors.yellow,
                  fontSize: 18,
                ),
                color: Colors.black,
              ),
            ),
          )));
}
