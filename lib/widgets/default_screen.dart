import 'package:flutter/material.dart';

import 'package:prefab_app/contants.dart';
import 'package:prefab_app/widgets/custom_appbar.dart';
import 'package:prefab_app/widgets/default_screen_tile.dart';
import 'package:prefab_app/widgets/reactive_container.dart';

class DefaultScreen extends StatelessWidget {
  final Widget child;

  const DefaultScreen({
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [CustomAppBar(), child],
        ),
      ),
    );
  }
}
