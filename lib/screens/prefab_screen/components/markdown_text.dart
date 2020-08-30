import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class MarkdownText extends StatelessWidget {
  final String text;
  final bool selectable;

  const MarkdownText({
    @required this.text,
    this.selectable = true
  });

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
      selectable: selectable,
      onTapLink: (url) => _launchUrl(url),
      styleSheet: MarkdownStyleSheet(
        h6: Theme.of(context).textTheme.headline6,
        h5: Theme.of(context).textTheme.headline5,
        h4: Theme.of(context).textTheme.headline4.copyWith(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
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
