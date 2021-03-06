import 'package:flutter/material.dart';
import 'package:health_tracker/browse_page.dart';
import 'package:health_tracker/calendar_page.dart';
import 'package:health_tracker/explore_page.dart';
import 'package:health_tracker/home_page.dart';
import 'package:health_tracker/settings_page.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _pageController = PageController();

  List<Widget> _screens = [
    HomePage(),
    BrowsePage(),
    CalendarPage(),
    ExplorePage(),
    SettingsPage()
  ];

  int _selectedIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void onTabTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                size: _selectedIndex == 0 ? 26 : null,
                color: _selectedIndex == 0 ? Colors.green : Colors.grey),
            title: Text('Home',
                style: TextStyle(
                    fontSize: _selectedIndex == 0 ? 14 : 12,
                    color: _selectedIndex == 0 ? Colors.green : Colors.grey)),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.format_list_bulleted_rounded,
                  size: _selectedIndex == 1 ? 26 : null,
                  color: _selectedIndex == 1 ? Colors.green : Colors.grey),
              title: Text('Browse',
                  style: TextStyle(
                      fontSize: _selectedIndex == 1 ? 14 : 12,
                      color:
                          _selectedIndex == 1 ? Colors.green : Colors.grey))),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_rounded,
                size: _selectedIndex == 2 ? 26 : null,
                color: _selectedIndex == 2 ? Colors.green : Colors.grey),
            title: Text('Calendar',
                style: TextStyle(
                    fontSize: _selectedIndex == 2 ? 14 : 12,
                    color: _selectedIndex == 2 ? Colors.green : Colors.grey)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
                size: _selectedIndex == 3 ? 26 : null,
                color: _selectedIndex == 3 ? Colors.green : Colors.grey),
            title: Text('Explore',
                style: TextStyle(
                    fontSize: _selectedIndex == 3 ? 14 : 12,
                    color: _selectedIndex == 3 ? Colors.green : Colors.grey)),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,
                  size: _selectedIndex == 4 ? 26 : null,
                  color: _selectedIndex == 4 ? Colors.green : Colors.grey),
              title: Text('Settings',
                  style: TextStyle(
                      fontSize: _selectedIndex == 4 ? 14 : 12,
                      color: _selectedIndex == 4 ? Colors.green : Colors.grey)))
        ],
      ),
    );
  }
}
