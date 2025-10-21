import 'package:flutter/material.dart';

class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              //
            },
            // contentPadding: EdgeInsets.zero,
            title: Text("profaile"),
            subtitle: Text("data"),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),

          Padding(
            padding: const EdgeInsets.all(18),

            child: InkWell(
              onTap: () {
                //
              },
              child: Row(
                children: [
                  Icon(Icons.person),
                  Column(children: [Text("profile"), Text("data")]),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_rounded),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
