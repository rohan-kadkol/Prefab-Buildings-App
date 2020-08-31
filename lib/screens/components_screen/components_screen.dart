import 'package:flutter/material.dart';

import 'package:prefab_app/contants.dart';
import 'package:prefab_app/models/category.dart';
import 'package:prefab_app/screens/home_screen/components/pages_bar.dart';
import 'package:prefab_app/widgets/custom_appbar.dart';
import 'package:prefab_app/widgets/image_text_tile.dart';
import 'package:prefab_app/widgets/reactive_container.dart';

class ComponentsScreen extends StatelessWidget {
  static final String routeName = '/components';

  final List<Category> categories = [
    Category(name: 'Bolts', imageUrl: kImages['bolts']),
    Category(name: 'Welding Wires', imageUrl: kImages['welding_wires']),
    Category(name: 'Flux', imageUrl: kImages['flux']),
    Category(name: 'Connection Bolts', imageUrl: kImages['connection_bolts']),
    Category(name: 'Doors', imageUrl: kImages['doors']),
    Category(name: 'Windows', imageUrl: kImages['windows']),
    Category(name: 'Cladding', imageUrl: kImages['cladding']),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomAppBar(),
            ReactiveContainer(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: kDefaultMargin,
                      horizontal: kDefaultMargin,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Components',
                          style: kTitleTextStyle(context, Colors.black87),
                        ),
                        const SizedBox(height: kDefaultMargin),
                        Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runSpacing: kDefaultMargin,
                          spacing: kDefaultMargin,
                          direction: Axis.horizontal,
                          children: categories
                              .map((cat) => ImageTextTile(
                                    width: kSmallTileHeight,
                                    height: kSmallTileHeight,
                                    name: cat.name,
                                    imageUrl: cat.imageUrl,
                                    onTap: () {},
                                  ))
                              .toList(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
