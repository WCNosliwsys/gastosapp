import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gastosappg7/pages/home_page.dart';
import 'package:gastosappg7/pages/page.dart';

void main() {
  runApp(
    MaterialApp(
      home: PagePage(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("es", "ES"),
        // Locale("en", "EN"),
      ],
    ),
  );
}
