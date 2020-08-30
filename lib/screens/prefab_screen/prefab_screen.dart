import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:prefab_app/contants.dart';
import 'package:prefab_app/screens/prefab_screen/components/custom_icon_button.dart';
import 'package:prefab_app/screens/prefab_screen/components/images_carousel.dart';
import 'package:prefab_app/screens/prefab_screen/components/markdown_text.dart';
import 'package:prefab_app/screens/prefab_screen/components/custom_table.dart';
import 'package:prefab_app/screens/prefab_screen/components/title_expandable.dart';
import 'package:prefab_app/screens/prefab_screen/components/title_table.dart';
import 'package:prefab_app/widgets/custom_appbar.dart';
import 'package:share/share.dart';
import 'package:universal_io/io.dart';

class PrefabScreen extends StatelessWidget {
  static final String routeName = '/prefab';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAppBar(),
              const SizedBox(
                height: kDefaultMargin,
              ),
              Text(
                'Modular Prefab Housing Unit',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.black87),
              ),
              Padding(
                padding: const EdgeInsets.all(kDefaultMargin),
                child: Wrap(
                  spacing: kDefaultMargin,
                  runSpacing: kDefaultMargin,
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
                      onTap: () =>
                          _shareText(context, 'https://www.google.com'),
                    )
                  ],
                ),
              ),
              ImagesCarousel(
                height: 300.0,
                width: 100.0,
                assetImages: kPrefabImagePaths,
              ),
              Padding(
                padding: const EdgeInsets.all(kDefaultMargin),
                child: CustomTable(
                  pairs: kBasicInfoPairs,
                ),
              ),
              TitleExpandable(
                initialExpanded: true,
                title: 'Production Description',
                children: [
                  MarkdownText(
                    text: kProjectDescription,
                  ),
                ],
              ),
              TitleExpandable(
                title: 'Material List for Prefabricated House',
                children: [
                  TitleTable(
                    title: 'Main Steel Frame',
                    pairs: kMainSteelFramePairs,
                  ),
                  TitleTable(
                    title: 'Roof & Wall',
                    pairs: kRoofAndWallPairs,
                  ),
                  TitleTable(
                    title: 'Ceiling & Flooring',
                    pairs: kCeilingAndFlooring,
                  ),
                  TitleTable(
                    title: 'Door & Window',
                    pairs: kDoorAndWindow,
                  ),
                  TitleTable(
                    title: 'Electrical System',
                    pairs: kElectricalSystem,
                  ),
                  TitleTable(
                    title: 'Water & Plumbing System (choose)',
                    pairs: kWaterAndPlumbingSystem,
                  ),
                  MarkdownText(
                    text:
                        'Plumbing System and Rain Water Drainage System as per building design',
                  ),
                ],
              ),
              TitleExpandable(
                title: 'Technical advantages',
                children: [MarkdownText(text: kTechnicalAdvantages)],
              )
            ],
          ),
        ),
      ),
    );
  }

  _showSnackbar(BuildContext context, String text) {
    final SnackBar snackbar = SnackBar(
      content: Text(text),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () => _showSnackbar(context, 'Removed from bookmarks (In the final version, users can see their bookmarks)'),
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
