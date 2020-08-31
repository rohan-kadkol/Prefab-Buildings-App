import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/prefab_screen/components/custom_icon_button.dart';
import 'package:share/share.dart';
import 'package:universal_io/io.dart';

class ActionButtonsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultMargin),
      child: Wrap(
        spacing: kDefaultMargin,
        runSpacing: kDefaultMargin,
        alignment: WrapAlignment.center,
        children: [
          CustomIconButton(
            text: 'Contact',
            backgroundColor: Colors.lightGreen,
            onTap: () => null,
            contentColor: Colors.white,
            icon: Icons.contact_mail,
          ),
          CustomIconButton(
            text: 'Bookmark',
            contentColor: Colors.white,
            backgroundColor: Colors.red,
            icon: FlutterIcons.bookmark_faw,
            onTap: () => _showSnackbar(context,
                'Bookmarked! (In the final version, users can see their bookmarks)'),
          ),
          CustomIconButton(
            text: 'Share',
            icon: Icons.share,
            backgroundColor: Colors.blue,
            contentColor: Colors.white,
            onTap: () => _shareText(context, 'https://www.google.com'),
          )
        ],
      ),
    );
  }

  _showSnackbar(BuildContext context, String text) {
    final SnackBar snackbar = SnackBar(
      content: Text(text),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () => _showSnackbar(context,
            'Removed from bookmarks (In the final version, users can see their bookmarks)'),
      ),
    );
    Scaffold.of(context).showSnackBar(snackbar);
  }

  _shareText(BuildContext context, String text) {
    if (Platform.isAndroid || Platform.isIOS) {
      Share.share(text);
    } else {
      text = 'Link copied to clipboard';
      Clipboard.setData(ClipboardData(text: text));
      _showSnackbar(context, text);
    }
  }
}
