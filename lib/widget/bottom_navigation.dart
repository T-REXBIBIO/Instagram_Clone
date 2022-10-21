import 'package:flutter/material.dart';
import 'package:instagramclone/screen/profile_page.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  static const _screens = [ProfilePage()];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(
          () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.circle_outlined, size: 30), label: ''),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}