import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../barrel.dart';

class PopularCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  PopularCard({this.title, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            height: 100.0,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    height: 80,
                    width: 80,
                    child: ImageBuilder(imageUrl: 'https://static.wikia.nocookie.net/westworld/images/f/fb/Westworld-The-Maze-church-steeple.png/revision/latest?cb=20161130015153', shimmerContainerHeight: 150.0, borderRadius: 10.0)
                  )
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('$title', style: Theme.of(context).textTheme.headline6,),
                      Text('14 april - 25 april 2021', style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 14))
                    ]
                  ),
                )
              ]
            )
          ),
      ),
    );
  }
}