import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/home_screen/components/pages_bar.dart';
import 'package:prefab_app/screens/home_screen/home_screen.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'app_bar',
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultMargin),
        height: 120.0,
        color: Theme.of(context).primaryColorLight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Material(
              child: InkWell(
                onHover: (hover) => null,
                onTap: () => Navigator.pushNamed(context, HomeScreen.routeName),
                child: Image(
                  image: AssetImage('assets/images/logo_large.png'),
                ),
              ),
            ),
            PagesBar()
          ],
        ),
      ),
    );
  }
}
