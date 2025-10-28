import 'package:flutter/material.dart';
import 'package:test/l10n/app_locale.dart';
import 'package:test/l10n/app_ar.arb';
import 'package:test/l10n/app_en.arb';

import 'package:flutter_localizations/flutter_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsetsDirectional.only(
        start: 20,
        end: 10,
        bottom: 20,
        top: 20,
      ),
      physics: PageScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.abc, size: 40),
              SizedBox(width: 20),
              Text("newProject", style: _textStyle),
            ],
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.amber,
            height: 300,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Text("Top Teck", style: _textStyle),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.abc_rounded, size: 40),
              Text("your name ...", style: _textStyle),
            ],
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Amjad Sharaf", style: _textStyle),
            color: Colors.blueAccent,
            width: double.infinity,
            height: 300,
          ),
        ],
      ),
    );
  }

  TextStyle get _textStyle =>
      TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold);
}
