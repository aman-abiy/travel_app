import 'dart:math';
import 'package:flutter/material.dart';
import 'package:travel_app/utils/image_builder.dart';

class LocationCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
      height: MediaQuery.of(context).size.height * 0.4,
      // width: MediaQuery.of(context).size.width * 0.7,
      child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
        child: ImageBuilder(imageUrl: 'https://i.pinimg.com/originals/4b/af/9d/4baf9d114c709288cbae5f6cd6a18bd8.jpg', shimmerContainerHeight: MediaQuery.of(context).size.height * 0.4, borderRadius:20.0)
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  Widget ratingStars(double rating) {
    // int roundedRating = 
  }
}