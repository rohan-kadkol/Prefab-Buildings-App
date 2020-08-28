import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/home_screen/components/pages_bar.dart';
import 'package:prefab_app/screens/home_screen/components/store_category_selector.dart';
import 'package:prefab_app/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [CustomAppBar(), StoreCategorySelector()],
      ),
    );
  }
}
