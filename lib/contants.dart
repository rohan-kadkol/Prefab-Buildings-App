import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double kDefaultMargin = 20.0;
const double kDefaultBorderRadius = 20.0;

const double kDefaultTileHeight = 500.0;
const double kSmallTileHeight = 400.0;

kTitleTextStyle(BuildContext context, Color color) => Theme.of(context)
    .textTheme
    .headline3
    .copyWith(color: color, fontWeight: FontWeight.w600);

const Map<String, String> kImages = {
  'prefab':
      'https://images.unsplash.com/photo-1565610222536-ef125c59da2e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
  'bolts':
      'https://images.unsplash.com/photo-1560636201-c08c2b24e147?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1483&q=80',
  'welding_wires':
      'https://images.unsplash.com/photo-1504328345606-18bbc8c9d7d1?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
  'flux':
      'https://images.unsplash.com/photo-1565610222536-ef125c59da2e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
  'connection_bolts':
      'https://images.unsplash.com/photo-1515707384144-8c119444db05?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80',
  'doors':
      'https://images.unsplash.com/photo-1536160885591-301854e2ed04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80',
  'windows':
      'https://images.unsplash.com/photo-1469981283837-561b3779462f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
  'cladding':
      'https://images.unsplash.com/photo-1562784395-3f4e53e30f36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=793&q=80',
};

final List<String> kPrefabImagePaths =
    List.generate(3, (index) => '/assets/images/prefab_$index.png').toList();
