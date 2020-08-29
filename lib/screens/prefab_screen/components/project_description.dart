import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class ProjectDescription extends StatelessWidget {
  final String text = """
  ##### Production Description
  ###### Technical Parameter of standard prefab house:
  1. Wind resistance: Grade 11(wind speed≤ 120km/h)
  2. Earthquake resistance: Grade 7
  3. Live load capacity of roofing: 0.6kn/m2
  4. External and internal wall heat transmission coefficient: 0.35Kcal/m2hc
  5. Second Floor Load Capacity: 150 kg/m2
  6. Live load of corridor is 2.0kn/ m2
  7. Wall permitted loading: 0.6KN/ m2
  8. Ceiling Permitted live loading: 0.5 KN/m2
  9. Wall Coefficient of thermal conductivity: K=0.442W/m2k
  10. Ceiling Coefficient of thermal conductivity: K=0.55W/ m2K
  ###### Main Steel Part
  1. H section steel columns, beams and wind-proof columns
  2. With treatment of one time red-oxide primer painting and two times grey facing painting
  ###### Roof & Wall Cladding
  1. Roof & Wall Corrugated Single Steel Sheet: 0.3mm-0.6mm
  2. Roof & Wall Sandwich Panel Insulated with EPS Foam, Glass wool, Rock wool and PU: 50mm-150mm
  3. Transparent Sheet (FRP): 1.0mm-2.0mm
  4. Flashings: Made by Color-coated Corrugated Steel Sheet

  ###### Window & Door
  1. Window: PVC Window or Aluminum-alloy Window
  2. Door: Sliding Door or Roll-up Door

  ###### Fasteners
  High-strength Bolt; Common Bolt and Nut; Self-tapping Screws; Foundation Bolt and Nut, ETC
 
  ###### Other Optional Accessories
  1. Gutter
  2. Downpipe
  3. Brick Wall: The height of brick wall is depended on client's need
  4. Ventilation System
  5. Lifting Height of Crane: >6m
  6. Lifting Weight of Crane: 3-30T
  """;

  _launchUrl(String url) async {
    if (await launcher.canLaunch(url)) {
      await launcher.launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Markdown(
      data: text,
      shrinkWrap: true,
      selectable: true,
      onTapLink: (url) => _launchUrl(url),
      styleSheet: MarkdownStyleSheet(
        h6: Theme.of(context).textTheme.headline6,
        h5: Theme.of(context).textTheme.headline5
      ),
    );

    // return RichText(
    //   text: TextSpan(
    //     children: <TextSpan>[
    //       TextSpan(text: 'Good year, not 2020'),
    //     ],
    //   ),
    // );
  }
}
