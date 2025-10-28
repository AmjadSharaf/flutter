import 'package:flutter/material.dart';
import 'package:test/Screens/mainScreen.dart';
import 'package:test/l10n/app_locale.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'palyfair'),
      debugShowCheckedModeBanner: false,
      home: Mainscreen(),
      locale: Locale('ar'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,

      supportedLocales: const [Locale('ar'), Locale('en')],
    );
  }
}
