import 'package:bottom_navigation_bar/pages/account_page.dart';
import 'package:bottom_navigation_bar/pages/chat_page.dart';
import 'package:bottom_navigation_bar/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BottomNavigationController(),
      ),
    );
  }
}

class BottomNavigationController extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<BottomNavigationController> {
  int _currentIndex = 0;
  final pages = [HomePage(), ChatPage(), AccountPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigation"),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "首頁"),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "聊天室首頁"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "個人資料頁")
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        onTap: _onItemClick,
      ),
    );
  }

  void _onItemClick(int value){
    setState(() {
      _currentIndex = value;
    });
  }
}
