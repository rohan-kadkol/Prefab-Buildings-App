import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/models/category.dart';
import 'package:prefab_app/screens/prefab_screen/prefab_screen.dart';
import 'package:prefab_app/widgets/custom_appbar.dart';
import 'package:prefab_app/widgets/default_screen.dart';
import 'package:prefab_app/widgets/default_screen_tile.dart';
import 'package:prefab_app/widgets/image_text_tile.dart';

class PrefabsScreen extends StatelessWidget {
  static final String routeName = '/prefabs';

  final List<Category> categories = [
    Category(name: 'Modular Prefab Housing Unit', imageUrl: kImages['prefab']),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      child: DefaultScreenTile(
        title: 'Modular Prefab Housing Unit',
        children: [
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
                      onTap: () =>
                          Navigator.pushNamed(context, PrefabScreen.routeName),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
