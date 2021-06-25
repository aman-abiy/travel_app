import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/screens/home.dart';
import 'home.dart';

/// This is the stateful widget that the main application instantiates.
class PagesContainer extends StatefulWidget {
  PagesContainer({Key key}) : super(key: key);

  @override
  _PagesContainerState createState() => _PagesContainerState();
}

class _PagesContainerState extends State<PagesContainer> {
  int _currentIndex = 0;

  _onTap(int index) {
    setState(() => {
      _currentIndex = index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height / 12.5),
      //   child: AppBar(
      //     title: Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 10),
      //       child: Text(pageNames[_currentIndex], style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w600),),
      //     ),
      //     backgroundColor: Colors.white60,
      //     elevation: 0.1,
      //   )
      // ),
      body: bodyNavigator(_currentIndex),
      bottomNavigationBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height / 11),
        child: CupertinoTabBar(
          currentIndex: _currentIndex,
          // type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 25), 
              label: 'Discover'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_off_outlined),
              label: 'Search'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.archive_outlined),
              label: 'Archived'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined),
              label: 'Profile'
            )
          ],
          border: Border(top: BorderSide(width: 0.5, color: Colors.grey.shade400)),
          activeColor: Colors.cyan[900],
          onTap: _onTap
        ),
      )
    );
  }
}

Widget bodyNavigator(int index) {
  List<Widget> _children = [
    Home(),
    Home(),
    Home(),
    Home()
  ];
  return _children[index];
}
