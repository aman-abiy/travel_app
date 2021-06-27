import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../barrel.dart';

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
      body: bodyNavigator(_currentIndex),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.12,                                             
        decoration: BoxDecoration(                                                   
          borderRadius: BorderRadius.only(                                           
            topRight: Radius.circular(60), topLeft: Radius.circular(60)),            
          boxShadow: [                                                               
            BoxShadow(color: Colors.black45, spreadRadius: 0, blurRadius: 1),       
          ], 
          color: Colors.white                                                                        
        ),                                                                           
        child: ClipRRect(                                                            
          borderRadius: BorderRadius.only(                                           
          topLeft: Radius.circular(60.0),                                            
          topRight: Radius.circular(60.0),                                           
          ),                                                                         
          child: CupertinoTabBar(
            currentIndex: _currentIndex,                                                
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: _currentIndex == 0 ? Theme.of(context).primaryColor : Colors.white
                  ),
                  child: Icon(Icons.home_outlined, size: 30, color: _currentIndex == 0 ? Colors.white : Colors.black),
                ), 
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: _currentIndex == 1 ? Theme.of(context).primaryColor : Colors.white
                  ),
                  child: Icon(Icons.search, size: 30, color: _currentIndex == 1 ? Colors.white : Colors.black),
                ), 
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: _currentIndex == 2 ? Theme.of(context).primaryColor : Colors.white
                  ),
                  child: Icon(Icons.bookmark_outline, size: 30, color: _currentIndex == 2 ? Colors.white : Colors.black),
                ), 
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: _currentIndex == 3 ? Theme.of(context).primaryColor : Colors.white
                  ),
                  child: Icon(Icons.settings_outlined, size: 30, color: _currentIndex == 3 ? Colors.white :  Colors.black),
                ), 
              ),

              // BottomNavigationBarItem(
              //   icon: Icon(Icons.search, size: 30),
              // ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.bookmark, size: 30),
              // ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.settings, size: 30),
              // )
            ],
            border: Border(top: BorderSide(width: 0.5, color: Colors.grey.shade400)),
            activeColor: Colors.white,
            onTap: _onTap                                                                       
          ),                                                                         
        )       
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
