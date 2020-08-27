import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double kDefaultMargin = 20.0;
const double kDefaultBorderRadius = 20.0;

kTitleTextStyle(BuildContext context, Color color) => Theme.of(context)
    .textTheme
    .headline3
    .copyWith(color: color, fontWeight: FontWeight.w600);
