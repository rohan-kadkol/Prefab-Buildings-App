import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/prefab_screen/components/markdown_text.dart';

class TitleExpandable extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final bool initialExpanded;

  const TitleExpandable(
      {@required this.title,
      @required this.children,
      this.initialExpanded = false});

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      initialExpanded: initialExpanded,
      child: Expandable(
        collapsed: ExpandableButton(
          child: Row(
            children: [
              Expanded(
                child: MarkdownText(
                  text: '#### $title',
                  selectable: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(kDefaultMargin),
                child: Icon(Icons.keyboard_arrow_down),
              )
            ],
          ),
        ),
        expanded: Column(
          children: [
            ExpandableButton(
              child: Row(
                children: [
                  Expanded(
                      child: MarkdownText(
                    text: '#### $title',
                    selectable: false,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultMargin),
                    child: Icon(Icons.keyboard_arrow_up),
                  )
                ],
              ),
            ),
          ]
            ..addAll(children)
            ..add(
              ExpandableButton(
                child: Padding(
                  padding: const EdgeInsets.all(kDefaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.keyboard_arrow_up),
                      Text('Collapse')
                    ],
                  ),
                ),
              ),
            ),
        ),
      ),
    );
  }
}
