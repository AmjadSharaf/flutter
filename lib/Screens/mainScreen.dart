import 'package:flutter/material.dart';
import 'package:test/Screens/Bnb/cart_screen.dart';
import 'package:test/Screens/Bnb/favorite_screen.dart';
import 'package:test/Screens/Bnb/home_screen.dart';
import 'package:test/Screens/Bnb/profile_screen.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Mainscreen> {
  int selectetIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blue,
        title: Text("main screen"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              // Navigator.push(context, route)         
                 },
            child: Icon(Icons.search, color: Colors.black),
          ),
          Icon(Icons.shape_line, color: Colors.black),
        ],
        elevation: 10,
        leading: Icon(Icons.logout, color: Colors.black),
      ),
      body: [
        HomeScreen(),
        FavoriteScreen(),
        CartScreen(),
        ProfileScreen()
      ][selectetIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        selectedFontSize: 20,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: selectetIndex,
        onTap: (int index) {
          setState(() {
            selectetIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}





/*Center(
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            // color: Colors.grey[300],
            gradient: LinearGradient(
              colors: [Colors.grey.shade100, Colors.grey.shade900],
            ),
            border: Border.all(width: 5, color: Colors.black),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: const Offset(5, 5),
                blurRadius: 0,
              ),
              BoxShadow(
                color: Colors.grey.shade400,
                offset: Offset(-5, -5),
                blurRadius: 0,
              ),
            ],
          ),

          child: Text(
            "Amjad Sharaf",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),*/