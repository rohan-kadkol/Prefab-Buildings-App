import 'package:flutter/material.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/models/pair.dart';

class TableOne extends StatelessWidget {
  final List<Pair> pairs = [
    Pair('Model NO.', 'prefab house'),
    Pair('Carbon Structural Steel', 'Q345b'),
    Pair('Application',
        'Steel Workshop, Steel Structure Platform, Steel Fabricated House, Structural Roofing, Frame Part, Steel Walkway and Floor, Steel Structure Bridge'),
    Pair('Size', 'According to Customer′s Requirement'),
    Pair('Color', 'According to Customer′s Requirement'),
    Pair('Wall', 'Sandwich Panel or Corrugated Steel Sheet'),
    Pair('Transport Package', 'Plastic Film'),
    Pair('HS Code', '7308900000'),
    Pair('Type of Steel For Building Structure', 'High-Strength Steel'),
    Pair('Residential Wall Structure', 'Wall Support'),
    Pair('Surface', 'Painting or Hot DIP Galvanize'),
    Pair('Steel Grade', 'Q345 Q235'),
    Pair('Roof', 'Sandwich Panel or Corrugated Steel Sheet'),
    Pair('Purlin Section', 'C or Z Section'),
    Pair('Origin', 'Qingdao, China'),
  ];

  @override
  Widget build(BuildContext context) {
    return Table(
        border: TableBorder.all(),
        children: pairs
            .asMap()
            .map((index, pair) => MapEntry(
                index,
                TableRow(
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .accentColor
                          .withOpacity(index % 2 == 0 ? 1.0 : 0.5),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(kDefaultMargin / 2),
                        child: Text(
                          pair.first,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(kDefaultMargin / 2),
                        child: Text(pair.second),
                      )
                    ])))
            .values
            .toList()
        );
  }
}
