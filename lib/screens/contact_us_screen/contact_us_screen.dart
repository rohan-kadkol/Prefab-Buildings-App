import 'package:flutter/material.dart';
import 'package:prefab_app/widgets/default_screen.dart';
import 'package:prefab_app/widgets/default_screen_tile.dart';
import 'package:prefab_app/widgets/reactive_container.dart';

class ContactUsScreen extends StatelessWidget {
  static final String routeName = '/contact_us';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      child: ReactiveContainer(
        child: DefaultScreenTile(
            title: 'Contact Us',
            children: [Text('Contact information will be displayed here.')]),
      ),
    );
  }
}
