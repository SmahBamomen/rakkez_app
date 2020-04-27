import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rkez/login.dart';

void main() {
  runApp(
    MaterialApp(

      debugShowCheckedModeBanner: false,
      supportedLocales: [
        Locale('ar', ''),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: Login(),
    ),
  );
}
