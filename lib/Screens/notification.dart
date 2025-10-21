import 'package:flutter/material.dart';

class Notificationr extends StatefulWidget {
  const Notificationr({super.key});

  @override
  State<Notificationr> createState() => _NotificationState();
}

class _NotificationState extends State<Notificationr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.orange.shade500,
                ),
                child: Column(children: [Text("prodacts"), Text("330")]),
              ),
              PositionedDirectional(
                top: 30,
                end: 30,
                child: Icon(Icons.circle, size: 50),
              ),
              PositionedDirectional(
                end: 40,
                top: 40,
                child: Icon(Icons.time_to_leave, size: 30, color: Colors.white),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },
        itemCount: 33,
      ),
    );
  }
}
