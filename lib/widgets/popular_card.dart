import 'package:flutter/material.dart';
import 'package:travel_app/utils/image_builder.dart';

class PopularCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Material(
        elevation: 5.0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          height: 100.0,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            children: [
              ImageBuilder(imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/66/Simeons_Kirke_Copenhagen_steeple.jpg', shimmerContainerHeight: 150.0, borderRadius: 15.0),
              Container(
                margin: const EdgeInsets.only(left: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('European Tour'),
                    Text('14 april - 25 april 2021')
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