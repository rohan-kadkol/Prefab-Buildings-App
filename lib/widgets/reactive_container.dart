import 'package:flutter/material.dart';

import 'package:prefab_app/contants.dart';

class ReactiveContainer extends StatelessWidget {
  final Widget child;

  const ReactiveContainer({
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    
    return Container(
        decoration:
            BoxDecoration(color: Colors.white, boxShadow: kDefaultShadow),
        width: width <= kMaxWidth ? width : kMaxWidth,
        padding: const EdgeInsets.symmetric(vertical: kDefaultMargin),
        child: child);
  }
}
