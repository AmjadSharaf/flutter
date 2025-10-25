import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: Size(double.infinity, 45),
              side: BorderSide(color: Colors.black),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(45),
                side: BorderSide(color: Colors.black),
              ),
            ),

            child: Text("data"),
          ),
          SizedBox(height: 20),
          InkWell(
            focusNode: FocusNode(canRequestFocus: true),
            autofocus: true,
            enableFeedback: true,

            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.red,
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Text(
                "data",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
