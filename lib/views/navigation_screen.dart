import 'package:flutter/material.dart';
import 'package:hackathon/views/checkout.dart';
import 'package:hackathon/views/description.dart';
import 'package:hackathon/views/home_page.dart';
import 'package:hackathon/views/order_done.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});
  static final title = 'salomon_bottom_bar';

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  List<Widget> pages = [
  HomePage(),
Description(),
CheckOut(),
   OrderDone()
  ];
  var _currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(NavigatorPage.title)),
      body: SafeArea(child: pages[_currentIndex]),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            // selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Likes"),
            // selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.badge),
            title: Text("Search"),
            // selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            // selectedColor: Colors.teal,
          ),
        ],
      ),
      
    );
  }
}
