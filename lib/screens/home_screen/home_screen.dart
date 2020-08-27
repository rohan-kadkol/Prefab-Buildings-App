import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/home_screen/components/pages_bar.dart';
import 'package:prefab_app/screens/home_screen/components/store_category_selector.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultMargin),
          height: 120.0,
          color: Theme.of(context).primaryColorLight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage('assets/images/logo_large.png'),
              ),
              PagesBar()
            ],
          ),
        ),
        StoreCategorySelector()
      ],
    );
  }
}
