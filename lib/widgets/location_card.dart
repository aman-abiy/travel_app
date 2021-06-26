import 'dart:math';
import 'package:flutter/material.dart';
import 'package:travel_app/utils/image_builder.dart';

class LocationCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
      // width: MediaQuery.of(context).size.width * 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: Stack(
          children: [
            ImageBuilder(imageUrl: 'https://i.pinimg.com/originals/4b/af/9d/4baf9d114c709288cbae5f6cd6a18bd8.jpg', shimmerContainerHeight: MediaQuery.of(context).size.height * 0.4, borderRadius:20.0),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.27,
              left: 15.0,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ratingStars(4),
                        SizedBox(width: 5.0),
                        Text('4,6', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),)
                      ],
                    ),
                    SizedBox(height: 15),
                    Text('Lighthouse \nexcursion', style: Theme.of(context).textTheme.headline5, maxLines: 2)
                  ]
                ),
              ),
            ),
            Positioned(
              top: 18.0,
              left: MediaQuery.of(context).size.height * 0.32,
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.bookmark,
                  size: 30.0,
                  color: Theme.of(context).primaryColor
                ),
              ),
            )
          ],
        )
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  Widget ratingStars(double rating) {
    int roundedRating = rating.round();

    List<Widget> ratingStars = [];

    for(int i = 0; i < roundedRating; i++) {
      ratingStars.add(Icon(Icons.star, size: 20, color: Colors.amber));
    }
    if(ratingStars.length < 5) {
      ratingStars.add(Icon(Icons.star, size: 20, color: Colors.grey.shade400));
    }
    return Row(children: ratingStars);
  }
}