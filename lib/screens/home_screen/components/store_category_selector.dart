import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/components_screen/components_screen.dart';
import 'package:prefab_app/widgets/image_text_tile.dart';

class StoreCategorySelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultMargin),
      height: kDefaultTileHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: ImageTextTile(
              onTap: () =>
                  Navigator.pushNamed(context, ComponentsScreen.routeName),
              name: 'Prefab',
              imageUrl: kImages['prefab'],
            ),
          ),
          const SizedBox(
            width: kDefaultMargin,
          ),
          Expanded(
            child: ImageTextTile(
              onTap: () =>
                  Navigator.pushNamed(context, ComponentsScreen.routeName),
              name: 'Components',
              imageUrl: kImages['bolts'],
            ),
          ),
        ],
      ),
    );
  }
}
