import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Widget> items = List.generate(80, (index) {
    return Text("Top Teck ${index + 1}", style: TextStyle(fontSize: 30));
  });
  List<Color> colors = [
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.blueAccent,
    Colors.yellow,
    Colors.yellowAccent,
    Colors.pink,
    Colors.pinkAccent,
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.blueAccent,
    Colors.yellow,
    Colors.yellowAccent,
    Colors.pink,
    Colors.pinkAccent,
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.blueAccent,
    Colors.yellow,
    Colors.yellowAccent,
    Colors.pink,
    Colors.pinkAccent,
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.blueAccent,
    Colors.yellow,
    Colors.yellowAccent,
    Colors.pink,
    Colors.pinkAccent,
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.blueAccent,
    Colors.yellow,
    Colors.yellowAccent,
    Colors.pink,
    Colors.pinkAccent,
  ];
  late PageController pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  pageController.previousPage(
                    duration: Duration(seconds: 1),
                    curve: Curves.decelerate,
                  );
                },
                child: Text(
                  "prov",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                onTap: () {
                  pageController.nextPage(
                    duration: Duration(seconds: 1),
                    curve: Curves.bounceIn,
                  );
                },
                child: Text(
                  "next",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return Container(color: colors[index], child: items[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
