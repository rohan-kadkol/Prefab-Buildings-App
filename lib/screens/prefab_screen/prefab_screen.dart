import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/prefab_screen/components/images_carousel.dart';
import 'package:prefab_app/screens/prefab_screen/components/markdown_text.dart';
import 'package:prefab_app/screens/prefab_screen/components/custom_table.dart';
import 'package:prefab_app/screens/prefab_screen/components/title_table.dart';
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
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline4
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
              padding: const EdgeInsets.all(kDefaultMargin),
              child: CustomTable(
                pairs: kBasicInfoPairs,
              ),
            ),
            MarkdownText(
              text: kProjectDescription,
            ),
            MarkdownText(
              text: '#### Material List for Prefabricated House',
            ),
            TitleTable(
              title: 'Main Steel Frame',
              pairs: kMainSteelFramePairs,
            ),
            TitleTable(
              title: 'Roof & Wall',
              pairs: kRoofAndWallPairs,
            ),
            TitleTable(
              title: 'Ceiling & Flooring',
              pairs: kCeilingAndFlooring,
            ),
            TitleTable(
              title: 'Door & Window',
              pairs: kDoorAndWindow,
            ),
            TitleTable(
              title: 'Electrical System',
              pairs: kElectricalSystem,
            ),
            TitleTable(
              title: 'Water & Plumbing System (choose)',
              pairs: kWaterAndPlumbingSystem,
            ),
            MarkdownText(
              text:
                  'Plumbing System and Rain Water Drainage System as per building design',
            )
          ],
        ),
      ),
    );
  }
}
