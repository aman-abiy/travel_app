import 'package:flutter/material.dart';
import 'package:travel_app/style/HexColor.dart';
import 'package:travel_app/widgets/location_card.dart';
import 'package:travel_app/widgets/popular_card.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView(
          padding: const EdgeInsets.only(left: 10.0),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Explore', 
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  GestureDetector(  
                    onTap: () {},
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(2, 4), // Shadow position
                          ),
                        ],
                      ),
                      child: Icon(Icons.tune,
                        color: Colors.black
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  LocationCard(),
                  LocationCard(),
                  LocationCard()
                ]
              ),
            ),
            SizedBox(height: 25.0),
            Text('Popular', style: Theme.of(context).textTheme.headline4),
            SizedBox(height: 25.0),
            Column(
              children: [
                PopularCard(),
                PopularCard(),
                PopularCard(),
              ]
            )
          ]
        ),
      ),
      backgroundColor: HexColor('#f0f3fc'),
    );
  }
}