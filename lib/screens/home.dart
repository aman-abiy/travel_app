import 'package:flutter/material.dart';
import '../barrel.dart';

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
                      height: 55.0,
                      width: 55.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27.5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            offset: Offset(0, 1), // Shadow position
                          ),
                        ],
                      ),
                      child: Icon(Icons.tune_rounded,
                        color: Colors.black
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: HeaderTabs(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Text('23 sights', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  LocationCard(),
                  LocationCard(),
                  LocationCard()
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
              child: Text('Popular', style: Theme.of(context).textTheme.headline4),
            ),
            Column(
              children: [
                PopularCard(title: 'European Tour', imageUrl: 'https://static.wikia.nocookie.net/westworld/images/f/fb/Westworld-The-Maze-church-steeple.png/revision/latest?cb=20161130015153'),
                PopularCard(title: 'Asian Tour', imageUrl: 'https://live.staticflickr.com/139/326369272_d524a09479_b.jpg'),
                PopularCard(title: 'American Tour', imageUrl: 'https://st.depositphotos.com/1918609/1739/i/600/depositphotos_17395059-stock-photo-white-church-in-canada.jpg'),
                PopularCard(title: 'African Tour', imageUrl: 'https://www.nuci.org/wp-content/uploads/2020/09/20141101093012-REMSteeple_0005-scaled.jpg'),
              ]
            )
          ]
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}