import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/prefab_screen/components/images_carousel.dart';

class PrefabScreen extends StatefulWidget {
  static final String routeName = '/prefab';

  @override
  _PrefabScreenState createState() => _PrefabScreenState();
}

class _PrefabScreenState extends State<PrefabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prefab Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImagesCarousel(
            height: 350.0,
            assetImages: kPrefabImagePaths,
          )
        ],
      ),
    );
  }
}
