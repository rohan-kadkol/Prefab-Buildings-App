import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/widgets/default_screen.dart';
import 'package:prefab_app/widgets/default_screen_tile.dart';
import 'package:prefab_app/widgets/reactive_container.dart';

class SpecializedScreen extends StatelessWidget {
  static final String routeName = '/spacialized';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      child: ReactiveContainer(
        child:
            DefaultScreenTile(title: 'Specialized Design Services', children: [
          Text(
            'Specialized steel building designs and drawings for PreEngineered Steel building manufacturersincluding blast resistant steel structures by tie up with Houston based firm IMI Engineering Inc.',
          ),
          const SizedBox(height: kDefaultMargin*6),
          Text('(Complete page to be implemented soon)')
        ]),
      ),
    );
  }
}
