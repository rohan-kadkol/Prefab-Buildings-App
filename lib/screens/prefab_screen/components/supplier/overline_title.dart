import 'package:flutter/material.dart';

class OverlineTitle extends StatelessWidget {
  final String overline;
  final String title;

  const OverlineTitle({
    this.overline,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          overline,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.overline,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
