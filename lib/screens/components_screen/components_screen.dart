import 'package:flutter/material.dart';

import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/home_screen/components/pages_bar.dart';
import 'package:prefab_app/widgets/custom_appbar.dart';

class ComponentsScreen extends StatelessWidget {
  static final String routeName = '/components';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
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
            ],
          ),
        ),
      ],
    );
  }
}
