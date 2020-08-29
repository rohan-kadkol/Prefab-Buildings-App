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
    List<String> imageUrls = kImages.values.toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Prefab Screen'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 300.0,
            child: CarouselSlider.builder(
              itemCount: imageUrls.length,
              itemBuilder: (BuildContext context, int index) {
                return Image(
                  image: NetworkImage(imageUrls[index]),
                );
              },
              options: CarouselOptions(
                  height: 300.0,
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
