import 'package:flutter/material.dart';

import 'package:prefab_app/contants.dart';
import 'package:prefab_app/models/pair.dart';

class CustomTable extends StatelessWidget {
  final List<Pair> pairs;

  const CustomTable({
    @required this.pairs,
  });

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
