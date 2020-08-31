import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/prefab_screen/components/supplier/overline_title.dart';

class SupplierTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String location;

  const SupplierTile({
    @required this.imageUrl,
    @required this.name,
    @required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          // backgroundImage: NetworkImage(imageUrl),
          backgroundImage: AssetImage('assets/images/logo.png'),
          radius: 40.0,
        ),
        const SizedBox(width: kDefaultMargin),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OverlineTitle(
              overline: 'Supplied by',
              title: name,
            ),
            const SizedBox(height: kDefaultMargin / 2),
            OverlineTitle(
              overline: 'Sourced from',
              title: location,
            ),
          ],
        ),
      ],
    );
  }
}
