import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/widgets/custom_appbar.dart';
import 'package:prefab_app/widgets/default_screen.dart';

class PrefabsScreen extends StatelessWidget {
  static final String routeName = '/prefabs';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      title: 'Prefabs',
      children: [
        Container(
          height: kSmallTileHeight,
          width: kSmallTileHeight,
          color: Colors.red,
          // child: Column(children: [Image(image: Ass,)],),
        )
      ],
    );
  }
}
