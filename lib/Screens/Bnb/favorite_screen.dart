import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Widget> items = List<Widget>.generate(
    80,
    (index) => Text("Amjad Ssharaf ${index + 1}"),
  );
  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   padding: EdgeInsetsDirectional.only(
    //     start: 40,
    //     end: 20,
    //     top: 20,
    //     bottom: 20,
    //   ),
    //   children: items,
    // );

    return ListView.separated(
      itemCount: 100,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(children: [Icon(Icons.thumb_up), Text("like")]),
                Row(children: [Icon(Icons.comment_outlined), Text("commrnt")]),
                Row(children: [Icon(Icons.shortcut_sharp), Text("share")]),
              ],
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 20),
    );
  }
}
