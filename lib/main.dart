import 'package:flutter/material.dart';
import 'package:test/Screens/mainScreen.dart';

import 'package:test/l10n/app-locale.dart';

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
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      locale: Locale('en'),
      supportedLocales: const [Locale('ar'), Locale('en')],
    );
  }
}
