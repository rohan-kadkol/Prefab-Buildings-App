import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/widgets/reactive_container.dart';

class DefaultScreenTile extends StatelessWidget {
  const DefaultScreenTile({
    @required this.title,
    @required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultMargin,
        horizontal: kDefaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: kTitleTextStyle(context, Colors.black87),
          ),
          const SizedBox(height: kDefaultMargin),
        ]..addAll(children),
      ),
    );
  }
}
