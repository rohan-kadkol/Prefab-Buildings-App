import 'package:flutter/material.dart';

import 'package:prefab_app/contants.dart';
import 'package:prefab_app/widgets/custom_appbar.dart';
import 'package:prefab_app/widgets/reactive_container.dart';

class DefaultScreen extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const DefaultScreen({
    @required this.title,
    @required this.children,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      Text(
        title,
        style: kTitleTextStyle(context, Colors.black87),
      ),
      const SizedBox(height: kDefaultMargin),
    ];
    widgets.addAll(children);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomAppBar(),
            ReactiveContainer(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultMargin,
                  horizontal: kDefaultMargin,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: widgets,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
