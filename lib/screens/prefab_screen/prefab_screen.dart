import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';

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
          Container(
            color: Colors.red,
            height: 400.0,
            child: CarouselSlider.builder(
              itemCount: kPrefabImagePaths.length,
              itemBuilder: (BuildContext context, int index) {
                return Image(
                  image: NetworkImage(kPrefabImagePaths[index]),
                );
              },
              options: CarouselOptions(
                  viewportFraction: .6,
                  autoPlay: true,
                  pauseAutoPlayOnManualNavigate: true,
                  pauseAutoPlayOnTouch: true,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true),
            ),
          ),
        ],
      ),
    );
  }
}
