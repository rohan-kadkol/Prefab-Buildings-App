import 'package:flutter/material.dart';

import 'package:prefab_app/contants.dart';

class LightTextButton extends StatelessWidget {
  final String text;

  const LightTextButton({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    // return ClipRRect(
    //   borderRadius: BorderRadius.circular(kDefaultBorderRadius),
    //   child: FlatButton(
    //     child: Text(text),
    //     color: Theme.of(context).accentColor,
    //     disabledColor: Theme.of(context).accentColor,
    //   ),
    // );
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultMargin, vertical: kDefaultMargin / 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        color: Theme.of(context).accentColor,
      ),
      child: Text(
        text,
        style:
            Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.grey),
      ),
    );
  }
}
