import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/prefab_screen/components/images_carousel.dart';
import 'package:prefab_app/screens/prefab_screen/components/table_one.dart';
import 'package:prefab_app/widgets/custom_appbar.dart';

class PrefabScreen extends StatefulWidget {
  static final String routeName = '/prefab';

  @override
  _PrefabScreenState createState() => _PrefabScreenState();
}

class _PrefabScreenState extends State<PrefabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Prefab Screen'),
      // ),
      body: SingleChildScrollView(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomAppBar(),
            const SizedBox(
              height: kDefaultMargin,
            ),
            Text(
              'Australian Standard Prefabricated Steel Structure Prefab House',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.black87),
            ),
            const SizedBox(
              height: kDefaultMargin,
            ),
            ImagesCarousel(
              height: 300.0,
              width: 100.0,
              assetImages: kPrefabImagePaths,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultMargin, vertical: kDefaultMargin),
              child: TableOne(),
            )
          ],
        ),
      ),
    );
  }
}
