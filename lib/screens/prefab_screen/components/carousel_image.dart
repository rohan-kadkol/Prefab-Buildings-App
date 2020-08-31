import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';

class CarouselImage extends StatelessWidget {
  final String assetImage;

  const CarouselImage({
    this.assetImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: kDefaultShadow,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        child: Image(
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
          image: AssetImage(assetImage),
        ),
      ),
    );
  }
}
