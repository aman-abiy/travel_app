import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ImageBuilder extends StatelessWidget {
  final String imageUrl;
  final double shimmerContainerHeight;
  final double borderRadius;

  ImageBuilder({this.imageUrl,  this.shimmerContainerHeight, this.borderRadius = 0.0});

  @override
  Widget build(BuildContext context) {
      // return Image.asset('assets/images/image2.jpg');
    if (imageUrl == null) {
      return Image.asset('assets/images/image2.jpg');
    }
    return ExtendedImage.network(
      imageUrl,
      fit: BoxFit.cover,
      cache: true,
      borderRadius: BorderRadius.circular(borderRadius),
      loadStateChanged: (ExtendedImageState state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            return Shimmer.fromColors(
              baseColor: Colors.grey[300],
              highlightColor: Colors.grey[100],
              enabled: true,
              child: Container(
                height: shimmerContainerHeight,
                color: Colors.white,
              ), 
            );
            break;
          case LoadState.completed:
            return state.completedWidget;
            break;
          case LoadState.failed:

            return Image.asset('assets/images/image1.jpg');
            break;
        }
        return Shimmer.fromColors(
              baseColor: Colors.grey[300],
              highlightColor: Colors.grey[100],
              enabled: true,
              child: Container(
                height: shimmerContainerHeight,
                color: Colors.white,
              ), 
            );
      },
    );
  }
}