import 'package:flutter/material.dart';

import 'package:prefab_app/contants.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color backgroundColor;
  final Color contentColor;
  final Function onTap;

  const CustomIconButton(
      {@required this.text,
      this.icon,
      this.backgroundColor,
      this.onTap,
      this.contentColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: kDefaultShadow,
      ),
      child: Material(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        child: InkWell(
          hoverColor: backgroundColor,
          splashColor: Theme.of(context).accentColor.withOpacity(.2),
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultBorderRadius),
            ),
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultMargin, vertical: kDefaultMargin / 2),
            child: FittedBox(
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: contentColor,
                  ),
                  const SizedBox(
                    width: kDefaultMargin / 2,
                  ),
                  Text(
                    text,
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: contentColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
