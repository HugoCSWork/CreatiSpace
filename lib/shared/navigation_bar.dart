import 'package:creatispace/pages/home/home_scaffold.dart';
import 'package:creatispace/pages/items/items_overview/items_overview_page.dart';
import 'package:creatispace/pages/messaging/messaging/messaging_scaffold.dart';
import 'package:creatispace/pages/messaging/user_list/user_list_with_scaffold.dart';
import 'package:creatispace/pages/profile/user_profile/user_profile_scaffold.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {

  final int pos;

  const NavigationBar({Key key, this.pos}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState(pos ?? 0);
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentIndex;

  _NavigationBarState(int pos){
    this._currentIndex = pos;
  }

  final List<Widget> _children = [
    HomeScaffold(),
    ItemsOverviewPage(),
    ItemsOverviewPage(),
    UserListScaffold(),
    UserProfileScaffold(),
  ];


  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('My Flutter App'),
      // ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.blue[200],
        fixedColor: Colors.blue[800],
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.add),
            label: 'Posts',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
          )
        ],
      ),
    );
  }
}
