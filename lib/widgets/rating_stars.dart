import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final double rating;

  const RatingStars({this.rating});

  @override
  Widget build(BuildContext context) {
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
