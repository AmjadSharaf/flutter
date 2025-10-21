import 'package:flutter/material.dart';

class Sttengs extends StatefulWidget {
  const Sttengs({super.key});

  @override
  State<Sttengs> createState() => _SttengsState();
}

class _SttengsState extends State<Sttengs> {
  List<Widget> item = List<Widget>.generate(
    40,
    (index) => Chip(label: Text("data")),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Wrap(spacing: 10, runSpacing: 10, children: item),
    );
  }
}
