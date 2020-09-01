import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/widgets/default_screen.dart';
import 'package:prefab_app/widgets/default_screen_tile.dart';
import 'package:prefab_app/widgets/reactive_container.dart';

class AutomationScreen extends StatelessWidget {
  static final String routeName = '/automation';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      child: ReactiveContainer(
        child:
            DefaultScreenTile(title: 'Machine Automation Products', children: [
          Text(
            'Machine Automation products and Consulting services for PreEngineered Steel building industry.',
          ),
          const SizedBox(height: kDefaultMargin*6),
          Text('(Complete page to be implemented soon)')
        ]),
      ),
    );
  }
}
