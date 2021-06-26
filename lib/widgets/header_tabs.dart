import 'package:flutter/material.dart';

class HeaderTabs extends StatefulWidget {

  @override
  _HeaderTabsState createState() => _HeaderTabsState();
}

class _HeaderTabsState extends State<HeaderTabs> {
  String selected = 'Sights';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          tabItem('Sights'),
          tabItem('Tours'),
          tabItem('Adventures')
        ],
      )
    );
  }

  Widget tabItem(String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = title;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 35.0),
        child: Column(
          children: [
            Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: selected == title ? Theme.of(context).primaryColor : Colors.black)),
            SizedBox(height: 10),
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: selected == title ?  Theme.of(context).primaryColor : Colors.white,
              )
            )
          ]
        ),
      ),
    );
  }
}