import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Widget> items = List.generate(80, (index) {
    return Text("Top Teck");
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
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: 100,
        crossAxisCount: 3,
      ),
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          child: items[index],
          color: colors[index],
        );
      },
    );

    //  GridView(
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisSpacing: 10,
    //     mainAxisSpacing: 10,
    //     mainAxisExtent: 300,

    //     crossAxisCount: 2,
    //   ),
    //   children: [
    //     Container(color: Colors.amber),
    //     Container(color: Colors.amber),
    //     Container(color: Colors.amber),
    //     Container(color: Colors.amber),
    //     Container(color: Colors.amber),
    //     Container(color: Colors.amber),
    //     Container(color: Colors.amber),
    //     Container(color: Colors.amber),
    //     Container(color: Colors.amber),
    //     Container(color: Colors.amber),
    //     Container(color: Colors.amber),
    //   ],
    // );
  }
}
