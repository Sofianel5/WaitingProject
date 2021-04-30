import 'package:flutter/material.dart';
import 'package:waitingproj/features/waitingproj/presentation/pages/choose.dart';
import 'package:waitingproj/features/waitingproj/presentation/pages/matches.dart';
import 'package:waitingproj/features/waitingproj/presentation/pages/profile.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;
  List<Widget> pages = [ChoosePage(), MatchesPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5F7),
      body: pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedPage,
        onTap: (int val) {
          setState(() {
            _selectedPage = val;
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text("Home", style: TextStyle(color: _selectedPage == 0 ? Colors.red : Colors.black),),
            icon: Icon(
              Icons.home,
              size: 30,
              color: _selectedPage == 0 ? Colors.red : Colors.black
            ),
          ),
          BottomNavigationBarItem(
            title: Text("Matches", style: TextStyle(color: _selectedPage == 1 ? Colors.red : Colors.black),),
            icon: Icon(
              Icons.list,
              size: 30,
              color: _selectedPage == 1 ? Colors.red : Colors.black
            ),
          ),
          BottomNavigationBarItem(
            title: Text("Profile", style: TextStyle(color: _selectedPage == 2 ? Colors.red : Colors.black),),
            icon: Icon(
              Icons.account_circle,
              size: 30,
              color: _selectedPage == 2 ? Colors.red : Colors.black
            ),
          ),
        ],
      ),
    );
  }
}
