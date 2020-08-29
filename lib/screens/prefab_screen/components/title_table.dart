import 'package:flutter/material.dart';

import 'package:prefab_app/contants.dart';
import 'package:prefab_app/models/pair.dart';
import 'package:prefab_app/screens/prefab_screen/components/custom_table.dart';
import 'package:prefab_app/screens/prefab_screen/components/markdown_text.dart';

class TitleTable extends StatelessWidget {
  final String title;
  final List<Pair> pairs;

  const TitleTable({
    @required this.title,
    @required this.pairs,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MarkdownText(
          text: """###### $title""",
        ),
        Padding(
          padding: const EdgeInsets.all(kDefaultMargin),
          child: CustomTable(
            pairs: pairs,
          ),
        )
      ],
    );
  }
}
