import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';

class PagesBar extends StatelessWidget {
  final List<String> pages = ['Home', 'About Us', 'Contact Us'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: pages.map((p) => _PageButton(pageName: p)).toList(),
    );
  }
}

class _PageButton extends StatelessWidget {
  final String pageName;

  const _PageButton({
    this.pageName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            width: 3.0,
            color: Theme.of(context).accentColor,
            style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      ),
      padding: const EdgeInsets.all(kDefaultMargin / 2),
      margin: const EdgeInsets.symmetric(horizontal: kDefaultMargin / 4),
      child: Text(
        pageName,
        style: Theme.of(context)
            .textTheme
            .headline5
            .copyWith(color: Theme.of(context).primaryColorDark),
      ),
    );
  }
}
